
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef double cmsFloat64Number ;


 int CIE122 ;
 int CheckSingleParametric (char*,int ,int,double*) ;
 int Gamma ;
 int IEC61966_21 ;
 int IEC61966_3 ;
 int param_5 ;
 int param_6 ;
 int param_7 ;
 int param_8 ;
 int sigmoidal ;

__attribute__((used)) static
cmsInt32Number CheckParametricToneCurves(void)
{
    cmsFloat64Number Params[10];



     Params[0] = 2.2;

     if (!CheckSingleParametric("Gamma", Gamma, 1, Params)) return 0;





     Params[0] = 2.2;
     Params[1] = 1.5;
     Params[2] = -0.5;

     if (!CheckSingleParametric("CIE122-1966", CIE122, 2, Params)) return 0;





     Params[0] = 2.2;
     Params[1] = 1.5;
     Params[2] = -0.5;
     Params[3] = 0.3;


     if (!CheckSingleParametric("IEC 61966-3", IEC61966_3, 3, Params)) return 0;





     Params[0] = 2.4;
     Params[1] = 1. / 1.055;
     Params[2] = 0.055 / 1.055;
     Params[3] = 1. / 12.92;
     Params[4] = 0.04045;

     if (!CheckSingleParametric("IEC 61966-2.1", IEC61966_21, 4, Params)) return 0;





     Params[0] = 2.2;
     Params[1] = 0.7;
     Params[2] = 0.2;
     Params[3] = 0.3;
     Params[4] = 0.1;
     Params[5] = 0.5;
     Params[6] = 0.2;

     if (!CheckSingleParametric("param_5", param_5, 5, Params)) return 0;



     Params[0] = 2.2;
     Params[1] = 0.7;
     Params[2] = 0.2;
     Params[3] = 0.3;

     if (!CheckSingleParametric("param_6", param_6, 6, Params)) return 0;



     Params[0] = 2.2;
     Params[1] = 0.9;
     Params[2] = 0.9;
     Params[3] = 0.02;
     Params[4] = 0.1;

     if (!CheckSingleParametric("param_7", param_7, 7, Params)) return 0;



     Params[0] = 0.9;
     Params[1] = 0.9;
     Params[2] = 1.02;
     Params[3] = 0.1;
     Params[4] = 0.2;

     if (!CheckSingleParametric("param_8", param_8, 8, Params)) return 0;



     Params[0] = 1.9;
     if (!CheckSingleParametric("sigmoidal", sigmoidal, 108, Params)) return 0;



     return 1;
}
