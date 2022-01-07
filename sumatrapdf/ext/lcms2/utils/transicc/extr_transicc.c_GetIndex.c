
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsContext ;


 int FatalError (char*,int) ;
 int GetLine (int ,char*,char*,int) ;
 int atoi (char*) ;
 int * cmsGetNamedColorList (int ) ;
 int cmsMAX_PATH ;
 int cmsNamedColorCount (int ,int const*) ;
 int cmsNamedColorInfo (int ,int const*,int,char*,char*,char*,int *,int *) ;
 int hTrans ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static
cmsUInt16Number GetIndex(cmsContext ContextID)
{
    char Buffer[4096], Name[cmsMAX_PATH], Prefix[40], Suffix[40];
    int index, max;
    const cmsNAMEDCOLORLIST* NamedColorList;

    NamedColorList = cmsGetNamedColorList(hTrans);
    if (NamedColorList == ((void*)0)) return 0;

    max = cmsNamedColorCount(ContextID, NamedColorList)-1;

    GetLine(ContextID, Buffer, "Color index (0..%d)? ", max);
    index = atoi(Buffer);

    if (index > max)
        FatalError("Named color %d out of range!", index);

    cmsNamedColorInfo(ContextID, NamedColorList, index, Name, Prefix, Suffix, ((void*)0), ((void*)0));

    printf("\n%s %s %s\n", Prefix, Name, Suffix);

    return (cmsUInt16Number) index;
}
