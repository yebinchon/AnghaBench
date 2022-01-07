
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int* argnull; int isnull; int * arg; } ;
struct TYPE_7__ {TYPE_5__ combfn_fcinfo; } ;
struct TYPE_6__ {int trans_value_isnull; int trans_value; } ;
typedef TYPE_1__ FAPerGroupState ;
typedef TYPE_2__ FACombineFnMeta ;
typedef int Datum ;


 int FunctionCallInvoke (TYPE_5__*) ;

__attribute__((used)) static void
group_state_advance(FAPerGroupState *per_group_state, FACombineFnMeta *combine_meta, Datum newval,
     bool newval_isnull)
{
 combine_meta->combfn_fcinfo.arg[0] = per_group_state->trans_value;
 combine_meta->combfn_fcinfo.argnull[0] = per_group_state->trans_value_isnull;
 combine_meta->combfn_fcinfo.arg[1] = newval;
 combine_meta->combfn_fcinfo.argnull[1] = newval_isnull;
 combine_meta->combfn_fcinfo.isnull = 0;
 per_group_state->trans_value = FunctionCallInvoke(&combine_meta->combfn_fcinfo);
 per_group_state->trans_value_isnull = combine_meta->combfn_fcinfo.isnull;
}
