
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _MultiplyMatrix (int ,int *) ;
 int _Remove1Op (int ,int *,int ) ;
 int _Remove2Op (int ,int *,int ,int ) ;
 int cmsSigFloatPCS2Lab ;
 int cmsSigFloatPCS2XYZ ;
 int cmsSigIdentityElemType ;
 int cmsSigLab2FloatPCS ;
 int cmsSigLab2XYZElemType ;
 int cmsSigLabV2toV4 ;
 int cmsSigLabV4toV2 ;
 int cmsSigXYZ2FloatPCS ;
 int cmsSigXYZ2LabElemType ;

__attribute__((used)) static
cmsBool PreOptimize(cmsContext ContextID, cmsPipeline* Lut)
{
    cmsBool AnyOpt = FALSE, Opt;

    do {

        Opt = FALSE;


        Opt |= _Remove1Op(ContextID, Lut, cmsSigIdentityElemType);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigXYZ2LabElemType, cmsSigLab2XYZElemType);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigLab2XYZElemType, cmsSigXYZ2LabElemType);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigLabV4toV2, cmsSigLabV2toV4);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigLabV2toV4, cmsSigLabV4toV2);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigLab2FloatPCS, cmsSigFloatPCS2Lab);


        Opt |= _Remove2Op(ContextID, Lut, cmsSigXYZ2FloatPCS, cmsSigFloatPCS2XYZ);


        Opt |= _MultiplyMatrix(ContextID, Lut);

        if (Opt) AnyOpt = TRUE;

    } while (Opt);

    return AnyOpt;
}
