
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cbData; int pbData; } ;
struct TYPE_6__ {scalar_t__ cbData; int pbData; } ;
struct TYPE_8__ {scalar_t__ dwVersion; TYPE_2__ SerialNumber; TYPE_1__ Issuer; } ;
typedef TYPE_3__ CMSG_SIGNER_INFO ;


 int memcmp (int ,int ,scalar_t__) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void compare_signer_info(const CMSG_SIGNER_INFO *got,
 const CMSG_SIGNER_INFO *expected)
{
    ok(got->dwVersion == expected->dwVersion, "Expected version %d, got %d\n",
     expected->dwVersion, got->dwVersion);
    ok(got->Issuer.cbData == expected->Issuer.cbData,
     "Expected issuer size %d, got %d\n", expected->Issuer.cbData,
     got->Issuer.cbData);
    ok(!memcmp(got->Issuer.pbData, expected->Issuer.pbData, got->Issuer.cbData),
     "Unexpected issuer\n");
    ok(got->SerialNumber.cbData == expected->SerialNumber.cbData,
     "Expected serial number size %d, got %d\n", expected->SerialNumber.cbData,
     got->SerialNumber.cbData);
    ok(!memcmp(got->SerialNumber.pbData, expected->SerialNumber.pbData,
     got->SerialNumber.cbData), "Unexpected serial number\n");

}
