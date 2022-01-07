
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsNAMEDCOLORLIST ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
typedef int cmsBool ;


 int SetRange (int,int ) ;
 int * cmsAllocNamedColorList (int ,int,int ,char*,char*) ;
 int cmsAppendNamedColor (int ,int *,char*,int *,int *) ;
 int cmsChannelsOf (int ,int) ;
 int cmsMAXCHANNELS ;
 int cmsMAX_PATH ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static
cmsNAMEDCOLORLIST* ComponentNames(cmsContext ContextID, cmsColorSpaceSignature space, cmsBool IsInput)
{
    cmsNAMEDCOLORLIST* out;
    int i, n;
    char Buffer[cmsMAX_PATH];

    out = cmsAllocNamedColorList(0, 12, cmsMAXCHANNELS, "", "");
    if (out == ((void*)0)) return ((void*)0);

    switch (space) {

    case 130:
        SetRange(100, IsInput);
        cmsAppendNamedColor(ContextID, out, "X", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "Y", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "Z", ((void*)0), ((void*)0));
        break;

    case 133:
        SetRange(1, IsInput);
        cmsAppendNamedColor(ContextID, out, "L*", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "a*", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "b*", ((void*)0), ((void*)0));
        break;

    case 132:
        SetRange(1, IsInput);
        cmsAppendNamedColor(ContextID, out, "L", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "u", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "v", ((void*)0), ((void*)0));
        break;

    case 129:
        SetRange(255, IsInput);
        cmsAppendNamedColor(ContextID, out, "Y", ((void*)0), ((void*)0) );
        cmsAppendNamedColor(ContextID, out, "Cb", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "Cr", ((void*)0), ((void*)0));
        break;


    case 128:
        SetRange(1, IsInput);
        cmsAppendNamedColor(ContextID, out, "Y", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "x", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "y", ((void*)0), ((void*)0));
        break;

    case 131:
        SetRange(255, IsInput);
        cmsAppendNamedColor(ContextID, out, "R", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "G", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "B", ((void*)0), ((void*)0));
        break;

    case 136:
        SetRange(255, IsInput);
        cmsAppendNamedColor(ContextID, out, "G", ((void*)0), ((void*)0));
        break;

    case 134:
        SetRange(255, IsInput);
        cmsAppendNamedColor(ContextID, out, "H", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "s", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "v", ((void*)0), ((void*)0));
        break;

    case 135:
        SetRange(255, IsInput);
        cmsAppendNamedColor(ContextID, out, "H", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "l", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "s", ((void*)0), ((void*)0));
        break;

    case 137:
        SetRange(1, IsInput);
        cmsAppendNamedColor(ContextID, out, "C", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "M", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "Y", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "K", ((void*)0), ((void*)0));
        break;

    case 138:
        SetRange(1, IsInput);
        cmsAppendNamedColor(ContextID, out, "C", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "M", ((void*)0), ((void*)0));
        cmsAppendNamedColor(ContextID, out, "Y", ((void*)0), ((void*)0));
        break;

    default:

        SetRange(1, IsInput);

        n = cmsChannelsOf(ContextID, space);

        for (i=0; i < n; i++) {

            sprintf(Buffer, "Channel #%d", i + 1);
            cmsAppendNamedColor(ContextID, out, Buffer, ((void*)0), ((void*)0));
        }
    }

    return out;

}
