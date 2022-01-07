
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cbData; int pbData; } ;
struct TYPE_9__ {TYPE_1__ IPAddress; int pwszURL; } ;
struct TYPE_8__ {int dwAltNameChoice; } ;
typedef TYPE_2__ CERT_ALT_NAME_ENTRY ;
 TYPE_5__ U (TYPE_2__ const) ;
 int lstrcmpW (int ,int ) ;
 int lstrlenW (int ) ;
 int memcmp (int ,int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void compareAltNameEntry(const CERT_ALT_NAME_ENTRY *expected,
 const CERT_ALT_NAME_ENTRY *got)
{
    ok(expected->dwAltNameChoice == got->dwAltNameChoice,
     "Expected name choice %d, got %d\n", expected->dwAltNameChoice,
     got->dwAltNameChoice);
    if (expected->dwAltNameChoice == got->dwAltNameChoice)
    {
        switch (got->dwAltNameChoice)
        {
        case 130:
        case 134:
        case 133:
        case 129:
        case 131:
            ok((!U(*expected).pwszURL && !U(*got).pwszURL) ||
             (!U(*expected).pwszURL && !lstrlenW(U(*got).pwszURL)) ||
             (!U(*got).pwszURL && !lstrlenW(U(*expected).pwszURL)) ||
             !lstrcmpW(U(*expected).pwszURL, U(*got).pwszURL),
             "Unexpected name\n");
            break;
        case 128:
        case 135:
        case 132:
            ok(U(*got).IPAddress.cbData == U(*expected).IPAddress.cbData,
               "Unexpected IP address length %d\n", U(*got).IPAddress.cbData);
            ok(!memcmp(U(*got).IPAddress.pbData, U(*expected).IPAddress.pbData,
                       U(*got).IPAddress.cbData), "Unexpected value\n");
            break;
        }
    }
}
