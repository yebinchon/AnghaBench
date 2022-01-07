
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsHANDLE ;
struct TYPE_5__ {double Min; double Peak; } ;
typedef TYPE_1__* LPSTAT ;


 double Mean (TYPE_1__*) ;
 double Std (TYPE_1__*) ;
 int cmsIT8SetData (int *,int ,char*,char*,char*) ;
 int cmsIT8SetDataDbl (int *,int ,char*,char*,double) ;

__attribute__((used)) static
void AddOneCGATSRow(cmsHANDLE hIT8, char *Name, LPSTAT st)
{

    double Per100 = 100.0 * ((255.0 - Mean(st)) / 255.0);

    cmsIT8SetData(((void*)0), hIT8, Name, "SAMPLE_ID", Name);
    cmsIT8SetDataDbl(((void*)0), hIT8, Name, "PER100_EQUAL", Per100);
    cmsIT8SetDataDbl(((void*)0), hIT8, Name, "MEAN_DE", Mean(st));
    cmsIT8SetDataDbl(((void*)0), hIT8, Name, "STDEV_DE", Std(st));
    cmsIT8SetDataDbl(((void*)0), hIT8, Name, "MIN_DE", st ->Min);
    cmsIT8SetDataDbl(((void*)0), hIT8, Name, "MAX_DE", st ->Peak);

}
