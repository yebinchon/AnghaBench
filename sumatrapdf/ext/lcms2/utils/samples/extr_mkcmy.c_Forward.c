
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double L; double a; double b; } ;
typedef TYPE_1__ cmsCIELab ;
typedef scalar_t__ WORD ;
struct TYPE_5__ {int Lab2RGB; } ;
typedef int LPVOID ;
typedef TYPE_2__* LPCARGO ;


 int TRUE ;
 int cmsDoTransform (int ,scalar_t__*,scalar_t__**,int) ;
 int cmsLabEncoded2Float (TYPE_1__*,scalar_t__*) ;
 int printf (char*,double,double,double) ;

__attribute__((used)) static
int Forward(register WORD In[], register WORD Out[], register LPVOID Cargo)
{
 LPCARGO C = (LPCARGO) Cargo;
 WORD RGB[3];
    cmsCIELab Lab;

    cmsLabEncoded2Float(&Lab, In);

 printf("%g %g %g\n", Lab.L, Lab.a, Lab.b);

 cmsDoTransform(C ->Lab2RGB, In, &RGB, 1);


 Out[0] = 0xFFFF - RGB[0];
 Out[1] = 0xFFFF - RGB[1];
 Out[2] = 0xFFFF - RGB[2];


 return TRUE;

}
