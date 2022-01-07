
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int services_discovery_t ;
typedef int pa_subscription_event_type_t ;
typedef int pa_operation ;
typedef int pa_context ;



 int PA_SUBSCRIPTION_EVENT_FACILITY_MASK ;


 int PA_SUBSCRIPTION_EVENT_SOURCE ;
 int PA_SUBSCRIPTION_EVENT_TYPE_MASK ;
 int RemoveSource (int *,int ) ;
 int SourceCallback ;
 int assert (int) ;
 int likely (int ) ;
 int * pa_context_get_source_info_by_index (int *,int ,int ,int *) ;
 int pa_operation_unref (int *) ;

__attribute__((used)) static void ContextCallback(pa_context *ctx, pa_subscription_event_type_t type,
                            uint32_t idx, void *userdata)
{
    services_discovery_t *sd = userdata;
    pa_operation *op;

    assert ((type & PA_SUBSCRIPTION_EVENT_FACILITY_MASK)
                                              == PA_SUBSCRIPTION_EVENT_SOURCE);
    switch (type & PA_SUBSCRIPTION_EVENT_TYPE_MASK)
    {
      case 129:
      case 130:
        op = pa_context_get_source_info_by_index(ctx, idx, SourceCallback, sd);
        if (likely(op != ((void*)0)))
            pa_operation_unref(op);
        break;

      case 128:
        RemoveSource (sd, idx);
        break;
    }
}
