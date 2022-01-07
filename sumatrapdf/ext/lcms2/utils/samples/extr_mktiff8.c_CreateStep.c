
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsToneCurve ;


 double DecodeAbTIFF (double) ;
 scalar_t__* calloc (int,int) ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,scalar_t__*) ;
 scalar_t__ floor (double) ;
 int free (scalar_t__*) ;

__attribute__((used)) static
cmsToneCurve* CreateStep(void)
{
 cmsToneCurve* Gamma;
 cmsUInt16Number* Table;
 int i;
 double a;

 Table = calloc(4096, sizeof(cmsUInt16Number));
 if (Table == ((void*)0)) return ((void*)0);

 for (i=0; i < 4096; i++) {

  a = (double) i * 255. / 4095.;

  a = DecodeAbTIFF(a);

  Table[i] = (cmsUInt16Number) floor(a * 257. + 0.5);
 }

 Gamma = cmsBuildTabulatedToneCurve16(0, 4096, Table);
 free(Table);

 return Gamma;
}
