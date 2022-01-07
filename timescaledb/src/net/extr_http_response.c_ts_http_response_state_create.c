
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int context; } ;
typedef int MemoryContext ;
typedef TYPE_1__ HttpResponseState ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int MemoryContextSwitchTo (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* palloc (int) ;
 int ts_http_response_state_init (TYPE_1__*) ;

HttpResponseState *
ts_http_response_state_create()
{
 MemoryContext context =
  AllocSetContextCreate(CurrentMemoryContext, "Http Response", ALLOCSET_DEFAULT_SIZES);
 MemoryContext old = MemoryContextSwitchTo(context);
 HttpResponseState *ret = palloc(sizeof(HttpResponseState));

 memset(ret, 0, sizeof(*ret));

 ret->context = context;
 ts_http_response_state_init(ret);
 MemoryContextSwitchTo(old);
 return ret;
}
