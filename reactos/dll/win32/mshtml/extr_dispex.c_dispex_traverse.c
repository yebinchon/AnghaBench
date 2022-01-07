
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsISupports ;
typedef int nsCycleCollectionTraversalCallback ;
struct TYPE_6__ {int var; } ;
typedef TYPE_2__ dynamic_prop_t ;
struct TYPE_7__ {TYPE_1__* dynamic_data; } ;
struct TYPE_5__ {int prop_cnt; TYPE_2__* props; } ;
typedef TYPE_3__ DispatchEx ;


 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int note_cc_edge (int *,char*,int *) ;

void dispex_traverse(DispatchEx *This, nsCycleCollectionTraversalCallback *cb)
{
    dynamic_prop_t *prop;

    if(!This->dynamic_data)
        return;

    for(prop = This->dynamic_data->props; prop < This->dynamic_data->props + This->dynamic_data->prop_cnt; prop++) {
        if(V_VT(&prop->var) == VT_DISPATCH)
            note_cc_edge((nsISupports*)V_DISPATCH(&prop->var), "dispex_data", cb);
    }


}
