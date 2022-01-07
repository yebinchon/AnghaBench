
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int cmsHANDLE ;


 int AddOneCGATSRow (int ,char*,int *) ;
 int CGATSout ;
 int Channels ;
 int * ColorantStat ;
 int ColorimetricStat ;
 int EuclideanStat ;
 int FatalError (char*) ;
 int cmsIT8Alloc (int ) ;
 int cmsIT8Free (int *,int ) ;
 int cmsIT8SaveToFile (int *,int ,int ) ;
 int cmsIT8SetComment (int *,int ,char*) ;
 int cmsIT8SetDataFormat (int *,int ,int,char*) ;
 int cmsIT8SetPropertyDbl (int *,int ,char*,int) ;
 int cmsIT8SetPropertyStr (int *,int ,char*,char*) ;
 int cmsIT8SetSheetType (int *,int ,char*) ;
 int ctime (int *) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 int time (int *) ;

__attribute__((used)) static
void CreateCGATS(const char* TiffName1, const char* TiffName2)
{
    cmsHANDLE hIT8 = cmsIT8Alloc(0);
    time_t ltime;
    char Buffer[256];

    cmsIT8SetSheetType(((void*)0), hIT8, "TIFFDIFF");


    sprintf(Buffer, "Differences between %s and %s", TiffName1, TiffName2);

    cmsIT8SetComment(((void*)0), hIT8, Buffer);

    cmsIT8SetPropertyStr(((void*)0), hIT8, "ORIGINATOR", "TIFFDIFF");
    time( &ltime );
    strcpy(Buffer, ctime(&ltime));
    Buffer[strlen(Buffer)-1] = 0;

    cmsIT8SetPropertyStr(((void*)0), hIT8, "CREATED", Buffer);

    cmsIT8SetComment(((void*)0), hIT8, " ");

    cmsIT8SetPropertyDbl(((void*)0), hIT8, "NUMBER_OF_FIELDS", 6);


    cmsIT8SetDataFormat(((void*)0), hIT8, 0, "SAMPLE_ID");
    cmsIT8SetDataFormat(((void*)0), hIT8, 1, "PER100_EQUAL");
    cmsIT8SetDataFormat(((void*)0), hIT8, 2, "MEAN_DE");
    cmsIT8SetDataFormat(((void*)0), hIT8, 3, "STDEV_DE");
    cmsIT8SetDataFormat(((void*)0), hIT8, 4, "MIN_DE");
    cmsIT8SetDataFormat(((void*)0), hIT8, 5, "MAX_DE");


    switch (Channels) {

    case 1:
            cmsIT8SetPropertyDbl(((void*)0), hIT8, "NUMBER_OF_SETS", 3);
            AddOneCGATSRow(hIT8, "GRAY_PLANE", &ColorantStat[0]);
            break;

    case 3:
            cmsIT8SetPropertyDbl(((void*)0), hIT8, "NUMBER_OF_SETS", 5);
            AddOneCGATSRow(hIT8, "R_PLANE", &ColorantStat[0]);
            AddOneCGATSRow(hIT8, "G_PLANE", &ColorantStat[1]);
            AddOneCGATSRow(hIT8, "B_PLANE", &ColorantStat[2]);
            break;


    case 4:
            cmsIT8SetPropertyDbl(((void*)0), hIT8, "NUMBER_OF_SETS", 6);
            AddOneCGATSRow(hIT8, "C_PLANE", &ColorantStat[0]);
            AddOneCGATSRow(hIT8, "M_PLANE", &ColorantStat[1]);
            AddOneCGATSRow(hIT8, "Y_PLANE", &ColorantStat[2]);
            AddOneCGATSRow(hIT8, "K_PLANE", &ColorantStat[3]);
            break;

    default: FatalError("Internal error: Bad ColorSpace");

    }

    AddOneCGATSRow(hIT8, "EUCLIDEAN", &EuclideanStat);
    AddOneCGATSRow(hIT8, "COLORIMETRIC", &ColorimetricStat);

    cmsIT8SaveToFile(((void*)0), hIT8, CGATSout);
    cmsIT8Free(((void*)0), hIT8);
}
