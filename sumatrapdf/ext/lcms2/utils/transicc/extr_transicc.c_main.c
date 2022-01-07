
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsFloat64Number ;
typedef int * cmsContext ;


 int CGATSoutFilename ;
 int CloseTransforms (int *) ;
 int HandleSwitches (int *,int,char**) ;
 int Help () ;
 int InitUtils (int *,char*) ;
 double LCMS_VERSION ;
 int OpenCGATSFiles (int *,int,char**) ;
 int OpenTransforms (int *) ;
 int PrintEncodedResults (int *,int *) ;
 int PrintFloatResults (int *,int *) ;
 int PrintPCSEncoded (int *,int *) ;
 int PrintPCSFloat (int *,int *) ;
 int PutCGATSValues (int *,int *) ;
 int TakeCGATSValues (int *,int ,int *) ;
 int TakeFloatValues (int *,int *) ;
 int Verbose ;
 int cmsDoTransform (int *,int ,int *,int *,int) ;
 int cmsIT8Free (int *,int *) ;
 int cmsIT8SaveToFile (int *,int *,int ) ;
 int cmsMAXCHANNELS ;
 scalar_t__ feof (int ) ;
 int fprintf (int ,char*,double) ;
 int * hIT8in ;
 int * hIT8out ;
 int hTrans ;
 scalar_t__ lIsFloat ;
 int nMaxPatches ;
 int stderr ;
 int stdin ;

int main(int argc, char *argv[])
{
    cmsUInt16Number Output[cmsMAXCHANNELS];
    cmsFloat64Number OutputFloat[cmsMAXCHANNELS];
    cmsFloat64Number InputFloat[cmsMAXCHANNELS];
    cmsContext ContextID = ((void*)0);

    int nPatch = 0;

    fprintf(stderr, "LittleCMS ColorSpace conversion calculator - 4.3 [LittleCMS %2.2f]\n", LCMS_VERSION / 1000.0);

    InitUtils(ContextID, "transicc");

    Verbose = 1;

    if (argc == 1) {

        Help();
        return 0;
    }

    HandleSwitches(ContextID, argc, argv);


    if (!OpenTransforms(ContextID)) return 1;


    OpenCGATSFiles(ContextID, argc, argv);


    for(;;) {

        if (hIT8in != ((void*)0)) {

            if (nPatch >= nMaxPatches) break;
            TakeCGATSValues(ContextID, nPatch++, InputFloat);

        } else {

            if (feof(stdin)) break;
            TakeFloatValues(ContextID, InputFloat);

        }

        if (lIsFloat)
            cmsDoTransform(ContextID, hTrans, InputFloat, OutputFloat, 1);
        else
            cmsDoTransform(ContextID, hTrans, InputFloat, Output, 1);


        if (hIT8out != ((void*)0)) {

            PutCGATSValues(ContextID, OutputFloat);
        }
        else {

            if (lIsFloat) {
                PrintFloatResults(ContextID, OutputFloat); PrintPCSFloat(ContextID, InputFloat);
            }
            else {
                PrintEncodedResults(ContextID, Output); PrintPCSEncoded(ContextID, InputFloat);
            }

        }
    }



    CloseTransforms(ContextID);

    if (hIT8in)
        cmsIT8Free(ContextID, hIT8in);

    if (hIT8out) {
        cmsIT8SaveToFile(ContextID, hIT8out, CGATSoutFilename);
        cmsIT8Free(ContextID, hIT8out);
    }


    return 0;
}
