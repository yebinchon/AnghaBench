
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int Verbose ;
 int cmsDoTransform (int ,scalar_t__,int *,int*,int) ;
 scalar_t__ hTransLab ;
 scalar_t__ hTransXYZ ;
 int printf (char*,int,int,int,int,int,int) ;

__attribute__((used)) static
void PrintPCSEncoded(cmsContext ContextID, cmsFloat64Number Input[])
{
    if (Verbose > 1 && hTransXYZ && hTransLab) {

        cmsUInt16Number XYZ[3], Lab[3];

        if (hTransXYZ) cmsDoTransform(ContextID, hTransXYZ, Input, XYZ, 1);
        if (hTransLab) cmsDoTransform(ContextID, hTransLab, Input, Lab, 1);

        printf("[PCS] Lab=(0x%04X,0x%04X,0x%04X) XYZ=(0x%04X,0x%04X,0x%04X)\n", Lab[0], Lab[1], Lab[2],
            XYZ[0], XYZ[1], XYZ[2]);

    }
}
