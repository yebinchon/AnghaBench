
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int CM_Get_Version () ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_CM_Get_Version(void)
{
    WORD ret;

    ret = CM_Get_Version();
    ok(ret == 0x0400, "got version %#x\n", ret);
}
