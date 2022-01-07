
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* argnull; int isnull; int * arg; } ;
struct TYPE_5__ {int is_null; int val; TYPE_2__ eq_fcinfo; } ;
typedef TYPE_1__ SegmentInfo ;
typedef TYPE_2__ FunctionCallInfoData ;
typedef int Datum ;


 int DatumGetBool (int ) ;
 int FunctionCallInvoke (TYPE_2__*) ;

__attribute__((used)) static bool
segment_info_datum_is_in_group(SegmentInfo *segment_info, Datum datum, bool is_null)
{
 Datum data_is_eq;
 FunctionCallInfoData *eq_fcinfo;

 if (segment_info->is_null != is_null)
  return 0;


 if (segment_info->is_null)
  return 1;


 eq_fcinfo = &segment_info->eq_fcinfo;
 eq_fcinfo->arg[0] = segment_info->val;
 eq_fcinfo->argnull[0] = 0;

 eq_fcinfo->arg[1] = datum;
 eq_fcinfo->isnull = 0;

 data_is_eq = FunctionCallInvoke(eq_fcinfo);

 if (eq_fcinfo->isnull)
  return 0;

 return DatumGetBool(data_is_eq);
}
