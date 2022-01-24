#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  int cmsUInt16Number ;
struct TYPE_7__ {int /*<<< orphan*/ * Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_8__ {double Gamma; double Min; double Max; } ;
typedef  TYPE_2__ _cmsVCGTGAMMA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int,double*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
#define  cmsVideoCardGammaFormulaType 129 
#define  cmsVideoCardGammaTableType 128 
 double FUNC13 (double,double) ; 

__attribute__((used)) static
void *FUNC14(cmsContext ContextID, struct _cms_typehandler_struct* self,
                     cmsIOHANDLER* io,
                     cmsUInt32Number* nItems,
                     cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number TagType, n, i;
    cmsToneCurve** Curves;
    FUNC12(self);

    *nItems = 0;

    // Read tag type
    if (!FUNC6(ContextID, io, &TagType)) return NULL;

    // Allocate space for the array
    Curves = ( cmsToneCurve**) FUNC1(ContextID, 3, sizeof(cmsToneCurve*));
    if (Curves == NULL) return NULL;

    // There are two possible flavors
    switch (TagType) {

    // Gamma is stored as a table
    case cmsVideoCardGammaTableType:
    {
       cmsUInt16Number nChannels, nElems, nBytes;

       // Check channel count, which should be 3 (we don't support monochrome this time)
       if (!FUNC5(ContextID, io, &nChannels)) goto Error;

       if (nChannels != 3) {
           FUNC11(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported number of channels for VCGT '%d'", nChannels);
           goto Error;
       }

       // Get Table element count and bytes per element
       if (!FUNC5(ContextID, io, &nElems)) goto Error;
       if (!FUNC5(ContextID, io, &nBytes)) goto Error;

       // Adobe's quirk fixup. Fixing broken profiles...
       if (nElems == 256 && nBytes == 1 && SizeOfTag == 1576)
           nBytes = 2;


       // Populate tone curves
       for (n=0; n < 3; n++) {

           Curves[n] = FUNC9(ContextID, nElems, NULL);
           if (Curves[n] == NULL) goto Error;

           // On depending on byte depth
           switch (nBytes) {

           // One byte, 0..255
           case 1:
               for (i=0; i < nElems; i++) {

                   cmsUInt8Number v;

                      if (!FUNC7(ContextID, io, &v)) goto Error;
                      Curves[n] ->Table16[i] = FUNC0(v);
               }
               break;

           // One word 0..65535
           case 2:
              if (!FUNC4(ContextID, io, nElems, Curves[n]->Table16)) goto Error;
              break;

          // Unsupported
           default:
              FUNC11(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported bit depth for VCGT '%d'", nBytes * 8);
              goto Error;
           }
       } // For all 3 channels
    }
    break;

   // In this case, gamma is stored as a formula
   case cmsVideoCardGammaFormulaType:
   {
       _cmsVCGTGAMMA Colorant[3];

        // Populate tone curves
       for (n=0; n < 3; n++) {

           double Params[10];

           if (!FUNC3(ContextID, io, &Colorant[n].Gamma)) goto Error;
           if (!FUNC3(ContextID, io, &Colorant[n].Min)) goto Error;
           if (!FUNC3(ContextID, io, &Colorant[n].Max)) goto Error;

            // Parametric curve type 5 is:
            // Y = (aX + b)^Gamma + e | X >= d
            // Y = cX + f             | X < d

            // vcgt formula is:
            // Y = (Max - Min) * (X ^ Gamma) + Min

            // So, the translation is
            // a = (Max - Min) ^ ( 1 / Gamma)
            // e = Min
            // b=c=d=f=0

           Params[0] = Colorant[n].Gamma;
           Params[1] = FUNC13((Colorant[n].Max - Colorant[n].Min), (1.0 / Colorant[n].Gamma));
           Params[2] = 0;
           Params[3] = 0;
           Params[4] = 0;
           Params[5] = Colorant[n].Min;
           Params[6] = 0;

           Curves[n] = FUNC8(ContextID, 5, Params);
           if (Curves[n] == NULL) goto Error;
       }
   }
   break;

   // Unsupported
   default:
      FUNC11(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unsupported tag type for VCGT '%d'", TagType);
      goto Error;
   }

   *nItems = 1;
   return (void*) Curves;

// Regret,  free all resources
Error:

    FUNC10(ContextID, Curves);
    FUNC2(ContextID, Curves);
    return NULL;

     FUNC12(SizeOfTag);
}