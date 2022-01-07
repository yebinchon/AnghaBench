
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SecureProvider ;


 int SECUR32_addPackages (int *,int,int *,int *) ;
 int * SECUR32_addProvider (int *,int *,int *) ;
 int infoA ;
 int infoW ;
 int kerberosTableA ;
 int kerberosTableW ;

void SECUR32_initKerberosSP(void)
{
    SecureProvider *provider = SECUR32_addProvider(&kerberosTableA, &kerberosTableW, ((void*)0));
    SECUR32_addPackages(provider, 1, &infoA, &infoW);
}
