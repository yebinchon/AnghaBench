
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_7__ {int * Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_8__ {double Gamma; double Min; double Max; } ;
typedef TYPE_2__ _cmsVCGTGAMMA ;


 int FROM_8_TO_16 (int ) ;
 scalar_t__ _cmsCalloc (int ,int,int) ;
 int _cmsFree (int ,TYPE_1__**) ;
 int _cmsRead15Fixed16Number (int ,int *,double*) ;
 int _cmsReadUInt16Array (int ,int *,int,int *) ;
 int _cmsReadUInt16Number (int ,int *,int*) ;
 int _cmsReadUInt32Number (int ,int *,int*) ;
 int _cmsReadUInt8Number (int ,int *,int *) ;
 TYPE_1__* cmsBuildParametricToneCurve (int ,int,double*) ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsFreeToneCurveTriple (int ,TYPE_1__**) ;
 int cmsSignalError (int ,int ,char*,int) ;
 int cmsUNUSED_PARAMETER (int) ;


 double pow (double,double) ;

__attribute__((used)) static
void *Type_vcgt_Read(cmsContext ContextID, struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     cmsUInt32Number* nItems,
                     cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number TagType, n, i;
    cmsToneCurve** Curves;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;


    if (!_cmsReadUInt32Number(ContextID, io, &TagType)) return ((void*)0);


    Curves = ( cmsToneCurve**) _cmsCalloc(ContextID, 3, sizeof(cmsToneCurve*));
    if (Curves == ((void*)0)) return ((void*)0);


    switch (TagType) {


    case 128:
    {
       cmsUInt16Number nChannels, nElems, nBytes;


       if (!_cmsReadUInt16Number(ContextID, io, &nChannels)) goto Error;

       if (nChannels != 3) {
           cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported number of channels for VCGT '%d'", nChannels);
           goto Error;
       }


       if (!_cmsReadUInt16Number(ContextID, io, &nElems)) goto Error;
       if (!_cmsReadUInt16Number(ContextID, io, &nBytes)) goto Error;


       if (nElems == 256 && nBytes == 1 && SizeOfTag == 1576)
           nBytes = 2;



       for (n=0; n < 3; n++) {

           Curves[n] = cmsBuildTabulatedToneCurve16(ContextID, nElems, ((void*)0));
           if (Curves[n] == ((void*)0)) goto Error;


           switch (nBytes) {


           case 1:
               for (i=0; i < nElems; i++) {

                   cmsUInt8Number v;

                      if (!_cmsReadUInt8Number(ContextID, io, &v)) goto Error;
                      Curves[n] ->Table16[i] = FROM_8_TO_16(v);
               }
               break;


           case 2:
              if (!_cmsReadUInt16Array(ContextID, io, nElems, Curves[n]->Table16)) goto Error;
              break;


           default:
              cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported bit depth for VCGT '%d'", nBytes * 8);
              goto Error;
           }
       }
    }
    break;


   case 129:
   {
       _cmsVCGTGAMMA Colorant[3];


       for (n=0; n < 3; n++) {

           double Params[10];

           if (!_cmsRead15Fixed16Number(ContextID, io, &Colorant[n].Gamma)) goto Error;
           if (!_cmsRead15Fixed16Number(ContextID, io, &Colorant[n].Min)) goto Error;
           if (!_cmsRead15Fixed16Number(ContextID, io, &Colorant[n].Max)) goto Error;
           Params[0] = Colorant[n].Gamma;
           Params[1] = pow((Colorant[n].Max - Colorant[n].Min), (1.0 / Colorant[n].Gamma));
           Params[2] = 0;
           Params[3] = 0;
           Params[4] = 0;
           Params[5] = Colorant[n].Min;
           Params[6] = 0;

           Curves[n] = cmsBuildParametricToneCurve(ContextID, 5, Params);
           if (Curves[n] == ((void*)0)) goto Error;
       }
   }
   break;


   default:
      cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported tag type for VCGT '%d'", TagType);
      goto Error;
   }

   *nItems = 1;
   return (void*) Curves;


Error:

    cmsFreeToneCurveTriple(ContextID, Curves);
    _cmsFree(ContextID, Curves);
    return ((void*)0);

     cmsUNUSED_PARAMETER(SizeOfTag);
}
