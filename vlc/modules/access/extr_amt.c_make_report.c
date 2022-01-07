
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nGroupRecord; scalar_t__ resv2; scalar_t__ checksum; scalar_t__ resv; int type; } ;
typedef TYPE_1__ amt_igmpv3_membership_report_t ;


 int AMT_IGMPV3_MEMBERSHIP_REPORT_TYPEID ;
 int htons (int) ;

__attribute__((used)) static void make_report( amt_igmpv3_membership_report_t *mr )
{
    mr->type = AMT_IGMPV3_MEMBERSHIP_REPORT_TYPEID;
    mr->resv = 0;
    mr->checksum = 0;
    mr->resv2 = 0;
    mr->nGroupRecord = htons(1);
}
