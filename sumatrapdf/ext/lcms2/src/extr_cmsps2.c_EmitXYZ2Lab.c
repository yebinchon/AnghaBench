
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 int _cmsIOPrintf (int ,int *,char*) ;

__attribute__((used)) static
void EmitXYZ2Lab(cmsContext ContextID, cmsIOHANDLER* m)
{
    _cmsIOPrintf(ContextID, m, "/RangeLMN [ -0.635 2.0 0 2 -0.635 2.0 ]\n");
    _cmsIOPrintf(ContextID, m, "/EncodeLMN [\n");
    _cmsIOPrintf(ContextID, m, "{ 0.964200  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    _cmsIOPrintf(ContextID, m, "{ 1.000000  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    _cmsIOPrintf(ContextID, m, "{ 0.824900  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    _cmsIOPrintf(ContextID, m, "]\n");
    _cmsIOPrintf(ContextID, m, "/MatrixABC [ 0 1 0 1 -1 1 0 0 -1 ]\n");
    _cmsIOPrintf(ContextID, m, "/EncodeABC [\n");


    _cmsIOPrintf(ContextID, m, "{ 116 mul  16 sub 100 div  } bind\n");
    _cmsIOPrintf(ContextID, m, "{ 500 mul 128 add 256 div  } bind\n");
    _cmsIOPrintf(ContextID, m, "{ 200 mul 128 add 256 div  } bind\n");


    _cmsIOPrintf(ContextID, m, "]\n");


}
