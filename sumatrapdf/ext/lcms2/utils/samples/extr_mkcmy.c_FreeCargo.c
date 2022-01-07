
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hRGB; int hLab; int RGB2Lab; int Lab2RGB; } ;
typedef TYPE_1__* LPCARGO ;


 int cmsCloseProfile (int ) ;
 int cmsDeleteTransform (int ) ;

__attribute__((used)) static
void FreeCargo(LPCARGO Cargo)
{
 cmsDeleteTransform(Cargo ->Lab2RGB);
 cmsDeleteTransform(Cargo ->RGB2Lab);
 cmsCloseProfile(Cargo ->hLab);
 cmsCloseProfile(Cargo ->hRGB);
}
