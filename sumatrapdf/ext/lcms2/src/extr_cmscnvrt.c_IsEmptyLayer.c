
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsVEC3 ;
typedef int cmsMAT3 ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsMAT3identity (int ,int *) ;
 scalar_t__ fabs (double) ;

__attribute__((used)) static
cmsBool IsEmptyLayer(cmsContext ContextID, cmsMAT3* m, cmsVEC3* off)
{
    cmsFloat64Number diff = 0;
    cmsMAT3 Ident;
    int i;

    if (m == ((void*)0) && off == ((void*)0)) return TRUE;
    if (m == ((void*)0) && off != ((void*)0)) return FALSE;

    _cmsMAT3identity(ContextID, &Ident);

    for (i=0; i < 3*3; i++)
        diff += fabs(((cmsFloat64Number*)m)[i] - ((cmsFloat64Number*)&Ident)[i]);

    for (i=0; i < 3; i++)
        diff += fabs(((cmsFloat64Number*)off)[i]);


    return (diff < 0.002);
}
