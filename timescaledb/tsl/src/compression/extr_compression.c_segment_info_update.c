
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_null; int typlen; int typ_by_val; scalar_t__ val; } ;
typedef TYPE_1__ SegmentInfo ;
typedef int Datum ;


 scalar_t__ datumCopy (int ,int ,int ) ;

__attribute__((used)) static void
segment_info_update(SegmentInfo *segment_info, Datum val, bool is_null)
{
 segment_info->is_null = is_null;
 if (is_null)
  segment_info->val = 0;
 else
  segment_info->val = datumCopy(val, segment_info->typ_by_val, segment_info->typlen);
}
