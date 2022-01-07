
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsBool ;


 int DbgThread () ;
 int FALSE ;
 int TRUE ;
 int cmsMLUgetASCII (int ,int *,char*,char*,char*,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static
cmsBool CheckOneStr(cmsMLU* mlu, cmsInt32Number n)
{
    char Buffer[256], Buffer2[256];


    cmsMLUgetASCII(DbgThread(), mlu, "en", "US", Buffer, 255);
    sprintf(Buffer2, "Hello, world %d", n);
    if (strcmp(Buffer, Buffer2) != 0) return FALSE;


    cmsMLUgetASCII(DbgThread(), mlu, "es", "ES", Buffer, 255);
    sprintf(Buffer2, "Hola, mundo %d", n);
    if (strcmp(Buffer, Buffer2) != 0) return FALSE;

    return TRUE;
}
