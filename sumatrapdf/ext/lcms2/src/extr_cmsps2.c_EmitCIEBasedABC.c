
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;


 int EmitIntent (int ,int *,int ) ;
 int EmitNGamma (int ,int *,int,int **) ;
 int EmitWhiteBlackD50 (int ,int *,int *) ;
 int INTENT_PERCEPTUAL ;
 int _cmsIOPrintf (int ,int *,char*,...) ;

__attribute__((used)) static
int EmitCIEBasedABC(cmsContext ContextID, cmsIOHANDLER* m, cmsFloat64Number* Matrix, cmsToneCurve** CurveSet, cmsCIEXYZ* BlackPoint)
{
    int i;

    _cmsIOPrintf(ContextID, m, "[ /CIEBasedABC\n");
    _cmsIOPrintf(ContextID, m, "<<\n");
    _cmsIOPrintf(ContextID, m, "/DecodeABC [ ");

    EmitNGamma(ContextID, m, 3, CurveSet);

    _cmsIOPrintf(ContextID, m, "]\n");

    _cmsIOPrintf(ContextID, m, "/MatrixABC [ " );

    for( i=0; i < 3; i++ ) {

        _cmsIOPrintf(ContextID, m, "%.6f %.6f %.6f ", Matrix[i + 3*0],
                                           Matrix[i + 3*1],
                                           Matrix[i + 3*2]);
    }


    _cmsIOPrintf(ContextID, m, "]\n");

    _cmsIOPrintf(ContextID, m, "/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\n");

    EmitWhiteBlackD50(ContextID, m, BlackPoint);
    EmitIntent(ContextID, m, INTENT_PERCEPTUAL);

    _cmsIOPrintf(ContextID, m, ">>\n");
    _cmsIOPrintf(ContextID, m, "]\n");


    return 1;
}
