
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_3__ {int nEntries; int* Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsHANDLE ;


 int DbgThread () ;
 int cmsIT8Alloc (int ) ;
 int cmsIT8Free (int ,int ) ;
 int cmsIT8SaveToFile (int ,int ,char const*) ;
 int cmsIT8SetDataFormat (int ,int ,int,char*) ;
 int cmsIT8SetDataRowCol (int ,int ,int,int,char*) ;
 int cmsIT8SetPropertyDbl (int ,int ,char*,int) ;
 int sprintf (char*,char*,int) ;

void DumpToneCurve(cmsToneCurve* gamma, const char* FileName)
{
    cmsHANDLE hIT8;
    cmsUInt32Number i;

    hIT8 = cmsIT8Alloc(DbgThread());

    cmsIT8SetPropertyDbl(DbgThread(), hIT8, "NUMBER_OF_FIELDS", 2);
    cmsIT8SetPropertyDbl(DbgThread(), hIT8, "NUMBER_OF_SETS", gamma ->nEntries);

    cmsIT8SetDataFormat(DbgThread(), hIT8, 0, "SAMPLE_ID");
    cmsIT8SetDataFormat(DbgThread(), hIT8, 1, "VALUE");

    for (i=0; i < gamma ->nEntries; i++) {
        char Val[30];

        sprintf(Val, "%u", i);
        cmsIT8SetDataRowCol(DbgThread(), hIT8, i, 0, Val);
        sprintf(Val, "0x%x", gamma ->Table16[i]);
        cmsIT8SetDataRowCol(DbgThread(), hIT8, i, 1, Val);
    }

    cmsIT8SaveToFile(DbgThread(), hIT8, FileName);
    cmsIT8Free(DbgThread(), hIT8);
}
