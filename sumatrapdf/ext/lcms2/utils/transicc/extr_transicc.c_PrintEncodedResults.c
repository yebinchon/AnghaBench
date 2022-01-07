
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;


 scalar_t__ InHexa ;
 int OutputColorSpace ;
 int * OutputColorant ;
 scalar_t__ Verbose ;
 scalar_t__ Width16 ;
 int cmsChannelsOf (int ,int ) ;
 int cmsMAX_PATH ;
 int cmsNamedColorInfo (int ,int *,int,char*,int *,int *,int *,int *) ;
 scalar_t__ floor (int) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static
void PrintEncodedResults(cmsContext ContextID, cmsUInt16Number Encoded[])
{
    cmsUInt32Number i, n;
    char ChannelName[cmsMAX_PATH];
    cmsUInt32Number v;

    n = cmsChannelsOf(ContextID, OutputColorSpace);
    for (i=0; i < n; i++) {

        if (OutputColorant != ((void*)0)) {

            cmsNamedColorInfo(ContextID, OutputColorant, i, ChannelName, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        }
        else {
            sprintf(ChannelName, "Channel #%u", i + 1);
        }

        if (Verbose > 0)
            printf("%s=", ChannelName);

        v = Encoded[i];

        if (InHexa) {

            if (Width16)
                printf("0x%04X ", (int) floor(v + .5));
            else
                printf("0x%02X ", (int) floor(v / 257. + .5));

        } else {

            if (Width16)
                printf("%d ", (int) floor(v + .5));
            else
                printf("%d ", (int) floor(v / 257. + .5));
        }

    }

    printf("\n");
}
