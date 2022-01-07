
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsCIELab ;
typedef int WORD ;
typedef int LPVOID ;


 int ITU2Lab (int *,int *) ;
 int TRUE ;
 int cmsFloat2LabEncoded (int *,int *) ;

__attribute__((used)) static
int OutputDirection(register WORD In[], register WORD Out[], register LPVOID Cargo)
{

 cmsCIELab Lab;

    ITU2Lab(In, &Lab);
    cmsFloat2LabEncoded(Out, &Lab);

 return TRUE;
}
