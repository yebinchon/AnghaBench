
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsContext ;


 int CGATSoutFilename ;
 int FatalError (char*,...) ;
 int SetOutputDataFormat (int ) ;
 int cmsIT8Alloc (int *) ;
 scalar_t__ cmsIT8GetPropertyDbl (int ,int *,char*) ;
 int * cmsIT8LoadFromFile (int ,char*) ;
 scalar_t__ cmsMAX_PATH ;
 int * hIT8in ;
 int hIT8out ;
 int nMaxPatches ;
 int strncpy (int ,char*,scalar_t__) ;
 int xoptind ;

__attribute__((used)) static
void OpenCGATSFiles(cmsContext ContextID, int argc, char *argv[])
{
    int nParams = argc - xoptind;

    if (nParams >= 1) {

        hIT8in = cmsIT8LoadFromFile(0, argv[xoptind]);

        if (hIT8in == ((void*)0))
            FatalError("'%s' is not recognized as a CGATS file", argv[xoptind]);

        nMaxPatches = (int) cmsIT8GetPropertyDbl(ContextID, hIT8in, "NUMBER_OF_SETS");
    }

    if (nParams == 2) {

        hIT8out = cmsIT8Alloc(((void*)0));
        SetOutputDataFormat(ContextID);
        strncpy(CGATSoutFilename, argv[xoptind+1], cmsMAX_PATH-1);
    }

    if (nParams > 2) FatalError("Too many CGATS files");
}
