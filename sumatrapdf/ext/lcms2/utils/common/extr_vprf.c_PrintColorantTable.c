
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 scalar_t__ cmsIsTag (int ,int ,int ) ;
 int cmsMAX_PATH ;
 int cmsNamedColorCount (int ,int *) ;
 int cmsNamedColorInfo (int ,int *,int,char*,int *,int *,int *,int *) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static
void PrintColorantTable(cmsContext ContextID, cmsHPROFILE hInput, cmsTagSignature Sig, const char* Title)
{
    cmsNAMEDCOLORLIST* list;
    int i, n;

    if (cmsIsTag(ContextID, hInput, Sig)) {

        printf("%s:\n", Title);

        list = (cmsNAMEDCOLORLIST*) cmsReadTag(ContextID, hInput, Sig);
        if (list == ((void*)0)) {
            printf("(Unavailable)\n");
            return;
        }

        n = cmsNamedColorCount(ContextID, list);
        for (i=0; i < n; i++) {

            char Name[cmsMAX_PATH];

            cmsNamedColorInfo(ContextID, list, i, Name, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            printf("\t%s\n", Name);
        }

        printf("\n");
    }

}
