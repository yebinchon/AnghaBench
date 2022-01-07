
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dmDriverExtra; scalar_t__ dmDeviceName; scalar_t__ dmSize; int dmFields; scalar_t__ dmDriverVersion; scalar_t__ dmSpecVersion; } ;
typedef scalar_t__ LPCSTR ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ DEVMODEA ;


 scalar_t__ CCHDEVICENAME ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 int strncmp (scalar_t__,scalar_t__,scalar_t__) ;
 int trace (char*,int ) ;

__attribute__((used)) static void test_DEVMODEA(const DEVMODEA *dm, LONG dmSize, LPCSTR exp_prn_name)
{



    if (dm->dmSpecVersion || dm->dmDriverVersion || dm->dmDriverExtra) {

        ok(!strncmp(exp_prn_name, (LPCSTR)dm->dmDeviceName, CCHDEVICENAME -1) ||
           !strncmp(exp_prn_name, (LPCSTR)dm->dmDeviceName, CCHDEVICENAME -2),
            "expected '%s', got '%s'\n", exp_prn_name, dm->dmDeviceName);
        ok(dm->dmSize + dm->dmDriverExtra == dmSize,
            "%u != %d\n", dm->dmSize + dm->dmDriverExtra, dmSize);
    }
    trace("dmFields %08x\n", dm->dmFields);
}
