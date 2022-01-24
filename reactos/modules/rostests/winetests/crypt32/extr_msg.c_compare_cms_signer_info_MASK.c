#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ dwIdChoice; } ;
struct TYPE_13__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_11__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_10__ {scalar_t__ cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_12__ {TYPE_2__ SerialNumber; TYPE_1__ Issuer; } ;
struct TYPE_15__ {TYPE_4__ KeyId; TYPE_3__ IssuerSerialNumber; } ;
struct TYPE_14__ {scalar_t__ dwVersion; TYPE_9__ SignerId; } ;
typedef  TYPE_5__ CMSG_CMS_SIGNER_INFO ;

/* Variables and functions */
 scalar_t__ CERT_ID_ISSUER_SERIAL_NUMBER ; 
 TYPE_8__ FUNC0 (TYPE_9__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(const CMSG_CMS_SIGNER_INFO *got,
 const CMSG_CMS_SIGNER_INFO *expected)
{
    FUNC2(got->dwVersion == expected->dwVersion, "Expected version %d, got %d\n",
     expected->dwVersion, got->dwVersion);
    FUNC2(got->SignerId.dwIdChoice == expected->SignerId.dwIdChoice,
     "Expected id choice %d, got %d\n", expected->SignerId.dwIdChoice,
     got->SignerId.dwIdChoice);
    if (got->SignerId.dwIdChoice == expected->SignerId.dwIdChoice)
    {
        if (got->SignerId.dwIdChoice == CERT_ID_ISSUER_SERIAL_NUMBER)
        {
            FUNC2(FUNC0(got->SignerId).IssuerSerialNumber.Issuer.cbData ==
             FUNC0(expected->SignerId).IssuerSerialNumber.Issuer.cbData,
             "Expected issuer size %d, got %d\n",
             FUNC0(expected->SignerId).IssuerSerialNumber.Issuer.cbData,
             FUNC0(got->SignerId).IssuerSerialNumber.Issuer.cbData);
            FUNC2(!FUNC1(FUNC0(got->SignerId).IssuerSerialNumber.Issuer.pbData,
             FUNC0(expected->SignerId).IssuerSerialNumber.Issuer.pbData,
             FUNC0(got->SignerId).IssuerSerialNumber.Issuer.cbData),
             "Unexpected issuer\n");
            FUNC2(FUNC0(got->SignerId).IssuerSerialNumber.SerialNumber.cbData ==
             FUNC0(expected->SignerId).IssuerSerialNumber.SerialNumber.cbData,
             "Expected serial number size %d, got %d\n",
             FUNC0(expected->SignerId).IssuerSerialNumber.SerialNumber.cbData,
             FUNC0(got->SignerId).IssuerSerialNumber.SerialNumber.cbData);
            FUNC2(!FUNC1(FUNC0(got->SignerId).IssuerSerialNumber.SerialNumber.pbData,
             FUNC0(expected->SignerId).IssuerSerialNumber.SerialNumber.pbData,
             FUNC0(got->SignerId).IssuerSerialNumber.SerialNumber.cbData),
             "Unexpected serial number\n");
        }
        else
        {
            FUNC2(FUNC0(got->SignerId).KeyId.cbData == FUNC0(expected->SignerId).KeyId.cbData,
             "expected key id size %d, got %d\n",
             FUNC0(expected->SignerId).KeyId.cbData, FUNC0(got->SignerId).KeyId.cbData);
            FUNC2(!FUNC1(FUNC0(expected->SignerId).KeyId.pbData,
             FUNC0(got->SignerId).KeyId.pbData, FUNC0(got->SignerId).KeyId.cbData),
             "unexpected key id\n");
        }
    }
    /* FIXME: check more things */
}