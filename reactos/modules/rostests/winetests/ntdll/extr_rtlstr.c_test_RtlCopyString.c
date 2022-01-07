
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Length; int Buffer; } ;
typedef TYPE_1__ STRING ;


 int ok (int,char*) ;
 int pRtlCopyString (TYPE_1__*,TYPE_1__*) ;
 int pRtlInitString (TYPE_1__*,char const*) ;
 scalar_t__ strncmp (int ,char*,int ) ;

__attribute__((used)) static void test_RtlCopyString(void)
{
    static const char teststring[] = "Some Wild String";
    char deststring[] = "                    ";
    STRING str;
    STRING deststr;

    pRtlInitString(&str, teststring);
    pRtlInitString(&deststr, deststring);
    pRtlCopyString(&deststr, &str);
    ok(strncmp(str.Buffer, deststring, str.Length) == 0, "String not copied\n");
}
