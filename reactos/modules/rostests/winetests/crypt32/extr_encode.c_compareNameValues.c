
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int cbData; scalar_t__ pbData; } ;
struct TYPE_6__ {scalar_t__ dwValueType; TYPE_1__ Value; } ;
typedef TYPE_2__ CERT_NAME_VALUE ;


 scalar_t__ CERT_RDN_ENCODED_BLOB ;
 scalar_t__ CERT_RDN_UTF8_STRING ;
 int memcmp (scalar_t__,scalar_t__,int ) ;
 int min (int,int) ;
 int ok (int,char*,scalar_t__,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void compareNameValues(const CERT_NAME_VALUE *expected,
 const CERT_NAME_VALUE *got)
{
    if (expected->dwValueType == CERT_RDN_UTF8_STRING &&
        got->dwValueType == CERT_RDN_ENCODED_BLOB)
    {
        win_skip("Can't handle CERT_RDN_UTF8_STRING\n");
        return;
    }

    ok(got->dwValueType == expected->dwValueType,
     "Expected string type %d, got %d\n", expected->dwValueType,
     got->dwValueType);
    ok(got->Value.cbData == expected->Value.cbData ||
     got->Value.cbData == expected->Value.cbData - sizeof(WCHAR) ,
     "String type %d: unexpected data size, got %d, expected %d\n",
     expected->dwValueType, got->Value.cbData, expected->Value.cbData);
    if (got->Value.cbData && got->Value.pbData)
        ok(!memcmp(got->Value.pbData, expected->Value.pbData,
         min(got->Value.cbData, expected->Value.cbData)),
         "String type %d: unexpected value\n", expected->dwValueType);
}
