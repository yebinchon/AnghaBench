
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double L; int b; int a; } ;
typedef TYPE_1__ cmsCIELab ;
typedef int WORD ;
typedef int LPVOID ;


 int TRUE ;
 int cmsLabEncoded2Float (TYPE_1__*,int*) ;
 int fabs (int ) ;
 scalar_t__ floor (double) ;

__attribute__((used)) static
int Forward(register WORD In[], register WORD Out[], register LPVOID Cargo)
{
    cmsCIELab Lab;


    cmsLabEncoded2Float(&Lab, In);

 if (fabs(Lab.a) < 3 && fabs(Lab.b) < 3) {

  double L_01 = Lab.L / 100.0;
     WORD K;

  if (L_01 > 1) L_01 = 1;
  K = (WORD) floor(L_01* 65535.0 + 0.5);

  Out[0] = Out[1] = Out[2] = K;
 }
 else {
  Out[0] = 0xFFFF; Out[1] = 0; Out[2] = 0;
 }

 return TRUE;
}
