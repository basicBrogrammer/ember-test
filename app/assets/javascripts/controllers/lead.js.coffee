App.LeadController = Ember.ObjectController.extend

  showUnsavedMessage: (->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')
  isEditing: false

  actions:
      delete: ->
        @get('model').destroyRecord().then =>
          @transitionRoute 'lead'

      saveChanges: -> @get('model').save() if @get('model.isDirty')
