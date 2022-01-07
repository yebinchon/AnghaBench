
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsHPROFILE ;
typedef int cmsContext ;


 int PrintColorantTable (int ,int *,int ,char*) ;
 int PrintInfo (int ,int *,int ) ;
 int Verbose ;
 int cmsInfoCopyright ;
 int cmsInfoDescription ;
 int cmsInfoManufacturer ;
 int cmsInfoModel ;
 int cmsSigColorantTableOutTag ;
 int cmsSigColorantTableTag ;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 int stderr ;

void PrintProfileInformation(cmsContext ContextID, cmsHPROFILE hInput)
{
    if (hInput == ((void*)0)) {
   fprintf(stderr, "*Wrong or corrupted profile*\n");
            return;
    }

    PrintInfo(ContextID, hInput, cmsInfoDescription);
    PrintInfo(ContextID, hInput, cmsInfoManufacturer);
    PrintInfo(ContextID, hInput, cmsInfoModel);
    PrintInfo(ContextID, hInput, cmsInfoCopyright);

    if (Verbose > 2) {

        PrintColorantTable(ContextID, hInput, cmsSigColorantTableTag, "Input colorant table");
        PrintColorantTable(ContextID, hInput, cmsSigColorantTableOutTag, "Input colorant out table");
    }

    printf("\n");
}
