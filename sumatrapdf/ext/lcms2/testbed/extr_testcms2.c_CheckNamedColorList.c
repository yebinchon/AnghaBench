
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int Fail (char*) ;
 int * cmsAllocNamedColorList (int ,int ,int,char*,char*) ;
 int cmsAppendNamedColor (int ,int *,char*,scalar_t__*,scalar_t__*) ;
 int cmsCloseProfile (int ,int *) ;
 int cmsFreeNamedColorList (int ,int *) ;
 int cmsMAXCHANNELS ;
 int cmsMAX_PATH ;
 int cmsNamedColorCount (int ,int *) ;
 int cmsNamedColorIndex (int ,int *,char*) ;
 int cmsNamedColorInfo (int ,int *,int,char*,int *,int *,scalar_t__*,scalar_t__*) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 scalar_t__ cmsReadTag (int ,int *,int ) ;
 int cmsSigNamedColor2Tag ;
 int cmsWriteTag (int ,int *,int ,int *) ;
 int remove (char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckNamedColorList(void)
{
    cmsNAMEDCOLORLIST* nc = ((void*)0), *nc2;
    cmsInt32Number i, j, rc=1;
    char Name[cmsMAX_PATH];
    cmsUInt16Number PCS[3];
    cmsUInt16Number Colorant[cmsMAXCHANNELS];
    char CheckName[cmsMAX_PATH];
    cmsUInt16Number CheckPCS[3];
    cmsUInt16Number CheckColorant[cmsMAXCHANNELS];
    cmsHPROFILE h;

    nc = cmsAllocNamedColorList(DbgThread(), 0, 4, "prefix", "suffix");
    if (nc == ((void*)0)) return 0;

    for (i=0; i < 4096; i++) {


        PCS[0] = PCS[1] = PCS[2] = (cmsUInt16Number) i;
        Colorant[0] = Colorant[1] = Colorant[2] = Colorant[3] = (cmsUInt16Number) (4096 - i);

        sprintf(Name, "#%d", i);
        if (!cmsAppendNamedColor(DbgThread(), nc, Name, PCS, Colorant)) { rc = 0; break; }
    }

    for (i=0; i < 4096; i++) {

        CheckPCS[0] = CheckPCS[1] = CheckPCS[2] = (cmsUInt16Number) i;
        CheckColorant[0] = CheckColorant[1] = CheckColorant[2] = CheckColorant[3] = (cmsUInt16Number) (4096 - i);

        sprintf(CheckName, "#%d", i);
        if (!cmsNamedColorInfo(DbgThread(), nc, i, Name, ((void*)0), ((void*)0), PCS, Colorant)) { rc = 0; goto Error; }


        for (j=0; j < 3; j++) {
            if (CheckPCS[j] != PCS[j]) { rc = 0; Fail("Invalid PCS"); goto Error; }
        }

        for (j=0; j < 4; j++) {
            if (CheckColorant[j] != Colorant[j]) { rc = 0; Fail("Invalid Colorant"); goto Error; };
        }

        if (strcmp(Name, CheckName) != 0) {rc = 0; Fail("Invalid Name"); goto Error; };
    }

    h = cmsOpenProfileFromFile(DbgThread(), "namedcol.icc", "w");
    if (h == ((void*)0)) return 0;
    if (!cmsWriteTag(DbgThread(), h, cmsSigNamedColor2Tag, nc)) return 0;
    cmsCloseProfile(DbgThread(), h);
    cmsFreeNamedColorList(DbgThread(), nc);
    nc = ((void*)0);

    h = cmsOpenProfileFromFile(DbgThread(), "namedcol.icc", "r");
    nc2 = (cmsNAMEDCOLORLIST *) cmsReadTag(DbgThread(), h, cmsSigNamedColor2Tag);

    if (cmsNamedColorCount(DbgThread(), nc2) != 4096) { rc = 0; Fail("Invalid count"); goto Error; }

    i = cmsNamedColorIndex(DbgThread(), nc2, "#123");
    if (i != 123) { rc = 0; Fail("Invalid index"); goto Error; }


    for (i=0; i < 4096; i++) {

        CheckPCS[0] = CheckPCS[1] = CheckPCS[2] = (cmsUInt16Number) i;
        CheckColorant[0] = CheckColorant[1] = CheckColorant[2] = CheckColorant[3] = (cmsUInt16Number) (4096 - i);

        sprintf(CheckName, "#%d", i);
        if (!cmsNamedColorInfo(DbgThread(), nc2, i, Name, ((void*)0), ((void*)0), PCS, Colorant)) { rc = 0; goto Error; }


        for (j=0; j < 3; j++) {
            if (CheckPCS[j] != PCS[j]) { rc = 0; Fail("Invalid PCS"); goto Error; }
        }

        for (j=0; j < 4; j++) {
            if (CheckColorant[j] != Colorant[j]) { rc = 0; Fail("Invalid Colorant"); goto Error; };
        }

        if (strcmp(Name, CheckName) != 0) {rc = 0; Fail("Invalid Name"); goto Error; };
    }

    cmsCloseProfile(DbgThread(), h);
    remove("namedcol.icc");

Error:
    if (nc != ((void*)0)) cmsFreeNamedColorList(DbgThread(), nc);
    return rc;
}
