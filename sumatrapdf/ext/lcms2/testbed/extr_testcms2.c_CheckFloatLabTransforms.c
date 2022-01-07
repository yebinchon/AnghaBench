
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int DbgThread () ;
 scalar_t__ OneTrivialLab (int ,int ,char*) ;
 int cmsCreateLab2Profile (int ,int *) ;
 int cmsCreateLab4Profile (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckFloatLabTransforms(void)
{
    return OneTrivialLab(cmsCreateLab4Profile(DbgThread(), ((void*)0)), cmsCreateLab4Profile(DbgThread(), ((void*)0)), "Lab4/Lab4") &&
           OneTrivialLab(cmsCreateLab2Profile(DbgThread(), ((void*)0)), cmsCreateLab2Profile(DbgThread(), ((void*)0)), "Lab2/Lab2") &&
           OneTrivialLab(cmsCreateLab4Profile(DbgThread(), ((void*)0)), cmsCreateLab2Profile(DbgThread(), ((void*)0)), "Lab4/Lab2") &&
           OneTrivialLab(cmsCreateLab2Profile(DbgThread(), ((void*)0)), cmsCreateLab4Profile(DbgThread(), ((void*)0)), "Lab2/Lab4");
}
