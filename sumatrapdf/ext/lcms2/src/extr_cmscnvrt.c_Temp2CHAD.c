
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMAT3 ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsCIExyY ;
typedef int cmsCIEXYZ ;


 int _cmsAdaptationMatrix (int ,int *,int *,int *,int ) ;
 int cmsD50_XYZ (int ) ;
 int cmsWhitePointFromTemp (int ,int *,int ) ;
 int cmsxyY2XYZ (int ,int *,int *) ;

__attribute__((used)) static
    void Temp2CHAD(cmsContext ContextID, cmsMAT3* Chad, cmsFloat64Number Temp)
{
    cmsCIEXYZ White;
    cmsCIExyY ChromaticityOfWhite;

    cmsWhitePointFromTemp(ContextID, &ChromaticityOfWhite, Temp);
    cmsxyY2XYZ(ContextID,&White, &ChromaticityOfWhite);
    _cmsAdaptationMatrix(ContextID, Chad, ((void*)0), &White, cmsD50_XYZ(ContextID));
}
