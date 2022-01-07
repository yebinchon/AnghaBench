
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int cmsMLU ;


 int DbgThread () ;
 int * cmsMLUalloc (int ,int ) ;
 int cmsMLUsetWide (int ,int *,char*,char*,int *) ;

__attribute__((used)) static
void SetOneStr(cmsMLU** mlu, wchar_t* s1, wchar_t* s2)
{
    *mlu = cmsMLUalloc(DbgThread(), 0);
    cmsMLUsetWide(DbgThread(), *mlu, "en", "US", s1);
    cmsMLUsetWide(DbgThread(), *mlu, "es", "ES", s2);
}
