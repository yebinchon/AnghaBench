
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHANDLE ;


 int DbgThread () ;
 int NPOINTS_IT8 ;
 int SubTest (char*) ;
 int * cmsIT8Alloc (int ) ;
 int cmsIT8Free (int ,int *) ;
 int cmsIT8GetDataDbl (int ,int *,char*,char*) ;
 int cmsIT8GetPropertyDbl (int ,int *,char*) ;
 int * cmsIT8LoadFromFile (int ,char*) ;
 int cmsIT8SaveToFile (int ,int *,char*) ;
 int cmsIT8SetDataFormat (int ,int *,int,char*) ;
 int cmsIT8SetDataRowCol (int ,int *,int,int ,char*) ;
 int cmsIT8SetDataRowColDbl (int ,int *,int,int,int) ;
 int cmsIT8SetPropertyDbl (int ,int *,char*,int) ;
 int cmsIT8SetPropertyHex (int ,int *,char*,int) ;
 int cmsIT8SetPropertyStr (int ,int *,char*,char*) ;
 int cmsIT8SetPropertyUncooked (int ,int *,char*,char*) ;
 int cmsIT8SetSheetType (int ,int *,char*) ;
 int remove (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckCGATS(void)
{
    cmsHANDLE it8;
    cmsInt32Number i;

    SubTest("IT8 creation");
    it8 = cmsIT8Alloc(DbgThread());
    if (it8 == ((void*)0)) return 0;

    cmsIT8SetSheetType(DbgThread(), it8, "LCMS/TESTING");
    cmsIT8SetPropertyStr(DbgThread(), it8, "ORIGINATOR", "1 2 3 4");
    cmsIT8SetPropertyUncooked(DbgThread(), it8, "DESCRIPTOR", "1234");
    cmsIT8SetPropertyStr(DbgThread(), it8, "MANUFACTURER", "3");
    cmsIT8SetPropertyDbl(DbgThread(), it8, "CREATED", 4);
    cmsIT8SetPropertyDbl(DbgThread(), it8, "SERIAL", 5);
    cmsIT8SetPropertyHex(DbgThread(), it8, "MATERIAL", 0x123);

    cmsIT8SetPropertyDbl(DbgThread(), it8, "NUMBER_OF_SETS", NPOINTS_IT8);
    cmsIT8SetPropertyDbl(DbgThread(), it8, "NUMBER_OF_FIELDS", 4);

    cmsIT8SetDataFormat(DbgThread(), it8, 0, "SAMPLE_ID");
    cmsIT8SetDataFormat(DbgThread(), it8, 1, "RGB_R");
    cmsIT8SetDataFormat(DbgThread(), it8, 2, "RGB_G");
    cmsIT8SetDataFormat(DbgThread(), it8, 3, "RGB_B");

    SubTest("Table creation");
    for (i=0; i < NPOINTS_IT8; i++) {

          char Patch[20];

          sprintf(Patch, "P%d", i);

          cmsIT8SetDataRowCol(DbgThread(), it8, i, 0, Patch);
          cmsIT8SetDataRowColDbl(DbgThread(), it8, i, 1, i);
          cmsIT8SetDataRowColDbl(DbgThread(), it8, i, 2, i);
          cmsIT8SetDataRowColDbl(DbgThread(), it8, i, 3, i);
    }

    SubTest("Save to file");
    cmsIT8SaveToFile(DbgThread(), it8, "TEST.IT8");
    cmsIT8Free(DbgThread(), it8);

    SubTest("Load from file");
    it8 = cmsIT8LoadFromFile(DbgThread(), "TEST.IT8");
    if (it8 == ((void*)0)) return 0;

    SubTest("Save again file");
    cmsIT8SaveToFile(DbgThread(), it8, "TEST.IT8");
    cmsIT8Free(DbgThread(), it8);


    SubTest("Load from file (II)");
    it8 = cmsIT8LoadFromFile(DbgThread(), "TEST.IT8");
    if (it8 == ((void*)0)) return 0;


     SubTest("Change prop value");
    if (cmsIT8GetPropertyDbl(DbgThread(), it8, "DESCRIPTOR") != 1234) {

        return 0;
    }


    cmsIT8SetPropertyDbl(DbgThread(), it8, "DESCRIPTOR", 5678);
    if (cmsIT8GetPropertyDbl(DbgThread(), it8, "DESCRIPTOR") != 5678) {

        return 0;
    }

     SubTest("Positive numbers");
    if (cmsIT8GetDataDbl(DbgThread(), it8, "P3", "RGB_G") != 3) {

        return 0;
    }


     SubTest("Positive exponent numbers");
     cmsIT8SetPropertyDbl(DbgThread(), it8, "DBL_PROP", 123E+12);
     if ((cmsIT8GetPropertyDbl(DbgThread(), it8, "DBL_PROP") - 123E+12) > 1 ) {

        return 0;
    }

    SubTest("Negative exponent numbers");
    cmsIT8SetPropertyDbl(DbgThread(), it8, "DBL_PROP_NEG", 123E-45);
     if ((cmsIT8GetPropertyDbl(DbgThread(), it8, "DBL_PROP_NEG") - 123E-45) > 1E-45 ) {

        return 0;
    }


    SubTest("Negative numbers");
    cmsIT8SetPropertyDbl(DbgThread(), it8, "DBL_NEG_VAL", -123);
    if ((cmsIT8GetPropertyDbl(DbgThread(), it8, "DBL_NEG_VAL")) != -123 ) {

        return 0;
    }

    cmsIT8Free(DbgThread(), it8);

    remove("TEST.IT8");
    return 1;

}
