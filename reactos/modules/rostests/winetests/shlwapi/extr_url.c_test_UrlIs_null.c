
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int ok (int,char*,int ) ;
 scalar_t__ pUrlIsA (int *,int ) ;
 scalar_t__ pUrlIsW (int *,int ) ;

__attribute__((used)) static void test_UrlIs_null(DWORD flag)
{
    BOOL ret;
    ret = pUrlIsA(((void*)0), flag);
    ok(ret == FALSE, "pUrlIsA(NULL, %d) failed\n", flag);
    ret = pUrlIsW(((void*)0), flag);
    ok(ret == FALSE, "pUrlIsW(NULL, %d) failed\n", flag);
}
