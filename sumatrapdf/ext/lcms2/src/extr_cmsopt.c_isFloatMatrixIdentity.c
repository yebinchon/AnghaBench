
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* v; } ;
typedef TYPE_2__ cmsMAT3 ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int * n; } ;


 int CloseEnoughFloat (int ,int ) ;
 int FALSE ;
 int TRUE ;
 int _cmsMAT3identity (int ,TYPE_2__*) ;

__attribute__((used)) static
cmsBool isFloatMatrixIdentity(cmsContext ContextID, const cmsMAT3* a)
{
       cmsMAT3 Identity;
       int i, j;

       _cmsMAT3identity(ContextID, &Identity);

       for (i = 0; i < 3; i++)
              for (j = 0; j < 3; j++)
                     if (!CloseEnoughFloat(a->v[i].n[j], Identity.v[i].n[j])) return FALSE;

       return TRUE;
}
