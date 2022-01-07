
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hLab; int hRGB; void* RGB2Lab; void* Lab2RGB; } ;
typedef TYPE_1__* LPCARGO ;


 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_Lab_16 ;
 int TYPE_RGB_16 ;
 int cmsCreateLabProfile (int *) ;
 void* cmsCreateTransform (int ,int ,int ,int ,int ,int ) ;
 int cmsCreate_sRGBProfile () ;
 int cmsFLAGS_NOTPRECALC ;

__attribute__((used)) static
void InitCargo(LPCARGO Cargo)
{


 Cargo -> hLab = cmsCreateLabProfile(((void*)0));
 Cargo -> hRGB = cmsCreate_sRGBProfile();

 Cargo->Lab2RGB = cmsCreateTransform(Cargo->hLab, TYPE_Lab_16,
             Cargo ->hRGB, TYPE_RGB_16,
          INTENT_RELATIVE_COLORIMETRIC,
          cmsFLAGS_NOTPRECALC);

 Cargo->RGB2Lab = cmsCreateTransform(Cargo ->hRGB, TYPE_RGB_16,
          Cargo ->hLab, TYPE_Lab_16,
          INTENT_RELATIVE_COLORIMETRIC,
          cmsFLAGS_NOTPRECALC);
}
