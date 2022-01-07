
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cbData; } ;
struct TYPE_6__ {scalar_t__ fOnlyContainsUserCerts; scalar_t__ fOnlyContainsCACerts; scalar_t__ fIndirectCRL; TYPE_1__ OnlySomeReasonFlags; int DistPointName; } ;
typedef TYPE_2__ CRL_ISSUING_DIST_POINT ;


 int compareDistPointName (int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void compareCRLIssuingDistPoints(const CRL_ISSUING_DIST_POINT *expected,
 const CRL_ISSUING_DIST_POINT *got)
{
    compareDistPointName(&expected->DistPointName, &got->DistPointName);
    ok(got->fOnlyContainsUserCerts == expected->fOnlyContainsUserCerts,
     "Unexpected fOnlyContainsUserCerts\n");
    ok(got->fOnlyContainsCACerts == expected->fOnlyContainsCACerts,
     "Unexpected fOnlyContainsCACerts\n");
    ok(got->OnlySomeReasonFlags.cbData == expected->OnlySomeReasonFlags.cbData,
     "Unexpected reason flags\n");
    ok(got->fIndirectCRL == expected->fIndirectCRL,
     "Unexpected fIndirectCRL\n");
}
