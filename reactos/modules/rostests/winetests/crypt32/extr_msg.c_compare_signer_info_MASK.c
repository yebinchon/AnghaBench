#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_6__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_8__ {scalar_t__ dwVersion; TYPE_2__ SerialNumber; TYPE_1__ Issuer; } ;
typedef  TYPE_3__ CMSG_SIGNER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static void FUNC2(const CMSG_SIGNER_INFO *got,
 const CMSG_SIGNER_INFO *expected)
{
    FUNC1(got->dwVersion == expected->dwVersion, "Expected version %d, got %d\n",
     expected->dwVersion, got->dwVersion);
    FUNC1(got->Issuer.cbData == expected->Issuer.cbData,
     "Expected issuer size %d, got %d\n", expected->Issuer.cbData,
     got->Issuer.cbData);
    FUNC1(!FUNC0(got->Issuer.pbData, expected->Issuer.pbData, got->Issuer.cbData),
     "Unexpected issuer\n");
    FUNC1(got->SerialNumber.cbData == expected->SerialNumber.cbData,
     "Expected serial number size %d, got %d\n", expected->SerialNumber.cbData,
     got->SerialNumber.cbData);
    FUNC1(!FUNC0(got->SerialNumber.pbData, expected->SerialNumber.pbData,
     got->SerialNumber.cbData), "Unexpected serial number\n");
    /* FIXME: check more things */
}