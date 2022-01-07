
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;


 scalar_t__ INADDR_NONE ;
 scalar_t__ inet_addr (int *) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_inet_addr(void)
{
    u_long addr;

    addr = inet_addr(((void*)0));
    ok(addr == INADDR_NONE, "inet_addr succeeded unexpectedly\n");
}
