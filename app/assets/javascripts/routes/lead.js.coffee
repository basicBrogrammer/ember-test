App.LeadRoute = Ember.Route.extend

  model:(params) -> @store.find 'lead', params.id
  App.Lead.reopenClass
    STATUSES: ['new', 'in progress', 'closed', 'bad']
