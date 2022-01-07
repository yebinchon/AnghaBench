
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int * ReadSegmentedCurve (int ,struct _cms_typehandler_struct*,int *) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsBool ReadMPECurve(cmsContext ContextID, struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     void* Cargo,
                     cmsUInt32Number n,
                     cmsUInt32Number SizeOfTag)
{
      cmsToneCurve** GammaTables = ( cmsToneCurve**) Cargo;

      GammaTables[n] = ReadSegmentedCurve(ContextID, self, io);
      return (GammaTables[n] != ((void*)0));

      cmsUNUSED_PARAMETER(SizeOfTag);
}
