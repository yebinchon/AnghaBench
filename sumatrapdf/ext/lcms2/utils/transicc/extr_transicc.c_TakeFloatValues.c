
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int GetIndex (int ) ;
 int GetLine (int ,char*,char*,char*) ;
 int InputColorSpace ;
 scalar_t__ InputColorant ;
 scalar_t__ InputNamedColor ;
 int InputRange ;
 scalar_t__ atof (char*) ;
 int cmsChannelsOf (int ,int ) ;
 int cmsMAX_PATH ;
 int cmsNamedColorInfo (int ,scalar_t__,int,char*,int *,int *,int *,int *) ;
 int fprintf (int ,char*) ;
 int memcpy (int*,int *,int) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int stdin ;
 scalar_t__ xisatty (int ) ;

__attribute__((used)) static
void TakeFloatValues(cmsContext ContextID, cmsFloat64Number Float[])
{
    cmsUInt32Number i, n;
    char ChannelName[cmsMAX_PATH];
    char Buffer[4096];

    if (xisatty(stdin))
        fprintf(stderr, "\nEnter values, 'q' to quit\n");

    if (InputNamedColor) {


        cmsUInt16Number index = GetIndex(ContextID);
        memcpy(Float, &index, sizeof(cmsUInt16Number));
        return;
    }

    n = cmsChannelsOf(ContextID, InputColorSpace);
    for (i=0; i < n; i++) {

        if (InputColorant) {
            cmsNamedColorInfo(ContextID, InputColorant, i, ChannelName, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        }
        else {
            InputRange = 1;
            sprintf(ChannelName, "Channel #%u", i+1);
        }

        GetLine(ContextID, Buffer, "%s? ", ChannelName);

        Float[i] = (cmsFloat64Number) atof(Buffer) / InputRange;
    }

    if (xisatty(stdin))
        fprintf(stderr, "\n");
}
