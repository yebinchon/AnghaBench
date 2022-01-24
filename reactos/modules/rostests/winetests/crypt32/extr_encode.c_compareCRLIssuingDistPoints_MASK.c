#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ cbData; } ;
struct TYPE_6__ {scalar_t__ fOnlyContainsUserCerts; scalar_t__ fOnlyContainsCACerts; scalar_t__ fIndirectCRL; TYPE_1__ OnlySomeReasonFlags; int /*<<< orphan*/  DistPointName; } ;
typedef  TYPE_2__ CRL_ISSUING_DIST_POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(const CRL_ISSUING_DIST_POINT *expected,
 const CRL_ISSUING_DIST_POINT *got)
{
    FUNC0(&expected->DistPointName, &got->DistPointName);
    FUNC1(got->fOnlyContainsUserCerts == expected->fOnlyContainsUserCerts,
     "Unexpected fOnlyContainsUserCerts\n");
    FUNC1(got->fOnlyContainsCACerts == expected->fOnlyContainsCACerts,
     "Unexpected fOnlyContainsCACerts\n");
    FUNC1(got->OnlySomeReasonFlags.cbData == expected->OnlySomeReasonFlags.cbData,
     "Unexpected reason flags\n");
    FUNC1(got->fIndirectCRL == expected->fIndirectCRL,
     "Unexpected fIndirectCRL\n");
}