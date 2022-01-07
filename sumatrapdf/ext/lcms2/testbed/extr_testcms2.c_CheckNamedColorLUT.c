
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsPipeline ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsInt32Number ;


 int DbgThread () ;
 int FALSE ;
 int _cmsStageAllocNamedColor (int ,int *,int ) ;
 int cmsAT_END ;
 int * cmsAllocNamedColorList (int ,int,int,char*,char*) ;
 int cmsAppendNamedColor (int ,int *,char*,int*,int*) ;
 int cmsFreeNamedColorList (int ,int *) ;
 int cmsMAXCHANNELS ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineEval16 (int ,int*,int*,int *) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static
cmsInt32Number CheckNamedColorLUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);
    cmsNAMEDCOLORLIST* nc;
    cmsInt32Number i,j, rc = 1, n2;
    cmsUInt16Number PCS[3];
    cmsUInt16Number Colorant[cmsMAXCHANNELS];
    char Name[255];
    cmsUInt16Number Inw[3], Outw[3];



    nc = cmsAllocNamedColorList(DbgThread(), 256, 3, "pre", "post");
    if (nc == ((void*)0)) return 0;

    for (i=0; i < 256; i++) {

        PCS[0] = PCS[1] = PCS[2] = (cmsUInt16Number) i;
        Colorant[0] = Colorant[1] = Colorant[2] = Colorant[3] = (cmsUInt16Number) i;

        sprintf(Name, "#%d", i);
        if (!cmsAppendNamedColor(DbgThread(), nc, Name, PCS, Colorant)) { rc = 0; break; }
    }

    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, _cmsStageAllocNamedColor(DbgThread(), nc, FALSE));

    cmsFreeNamedColorList(DbgThread(), nc);
    if (rc == 0) return 0;

    n2=0;

    for (j=0; j < 256; j++) {

        Inw[0] = (cmsUInt16Number) j;

        cmsPipelineEval16(DbgThread(), Inw, Outw, lut);
        for (i=0; i < 3; i++) {

            if (Outw[i] != j) {
                n2++;
            }
        }

    }

    cmsPipelineFree(DbgThread(), lut);
    return (n2 == 0);
}
