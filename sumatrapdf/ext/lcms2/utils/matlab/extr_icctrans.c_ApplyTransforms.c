
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mxArray ;


 size_t GetNumberOfPixels (int const*) ;
 int cmsDoTransform (int ,double*,double*,size_t) ;
 int hColorTransform ;
 double* mxGetPr (int const*) ;

__attribute__((used)) static
void ApplyTransforms(const mxArray *In, mxArray *Out)
{
 double *Input = mxGetPr(In);
 double *Output = mxGetPr(Out);
 size_t nPixels = GetNumberOfPixels(In);;

 cmsDoTransform(hColorTransform, Input, Output, nPixels );

}
