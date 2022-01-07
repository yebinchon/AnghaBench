
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int GetLastError () ;
 int SetLastError (int) ;
 int * does_not_existW ;
 int * emptyW ;
 int ok (int,char*,scalar_t__,int ) ;
 scalar_t__ pDeletePort (int *,int ,int *) ;

__attribute__((used)) static void test_DeletePort(void)
{
    DWORD res;


    if (!pDeletePort) return;

    if (0)
    {

        pDeletePort(((void*)0), 0, ((void*)0));
    }
    SetLastError(0xdeadbeef);
    res = pDeletePort(((void*)0), 0, emptyW);
    ok(!res, "returned %d with %u (expected '0')\n", res, GetLastError());

    SetLastError(0xdeadbeef);
    res = pDeletePort(((void*)0), 0, does_not_existW);
    ok(!res, "returned %d with %u (expected '0')\n", res, GetLastError());

}
