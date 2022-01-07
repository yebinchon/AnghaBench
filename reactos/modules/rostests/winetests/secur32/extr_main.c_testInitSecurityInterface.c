
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSecurityFunctionTableA ;


 int ok (int ,char*) ;
 int * pInitSecurityInterfaceA () ;

__attribute__((used)) static void testInitSecurityInterface(void)
{
    PSecurityFunctionTableA sec_fun_table = ((void*)0);

    sec_fun_table = pInitSecurityInterfaceA();
    ok(sec_fun_table != ((void*)0), "InitSecurityInterface() returned NULL.\n");

}
