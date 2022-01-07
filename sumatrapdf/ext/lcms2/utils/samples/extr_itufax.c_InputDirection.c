
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsCIELab ;
typedef int WORD ;
typedef int LPVOID ;


 int Lab2ITU (int *,int *) ;
 int TRUE ;
 int cmsClampLab (int *,int,int,int,int) ;
 int cmsLabEncoded2Float (int *,int *) ;

__attribute__((used)) static
int InputDirection(register WORD In[], register WORD Out[], register LPVOID Cargo)
{
    cmsCIELab Lab;

    cmsLabEncoded2Float(&Lab, In);
    cmsClampLab(&Lab, 85, -85, 125, -75);
    Lab2ITU(&Lab, Out);

 return TRUE;
}
