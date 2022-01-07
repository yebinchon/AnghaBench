
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;


 int OutputColorSpace ;
 int * OutputColorant ;
 double OutputRange ;
 scalar_t__ Verbose ;
 int cmsChannelsOf (int ,int ) ;
 int cmsMAX_PATH ;
 int cmsNamedColorInfo (int ,int *,int,char*,int *,int *,int *,int *) ;
 double floor (double) ;
 scalar_t__ lQuantize ;
 int lUnbounded ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static
void PrintFloatResults(cmsContext ContextID, cmsFloat64Number Value[])
{
    cmsUInt32Number i, n;
    char ChannelName[cmsMAX_PATH];
    cmsFloat64Number v;

    n = cmsChannelsOf(ContextID, OutputColorSpace);
    for (i=0; i < n; i++) {

        if (OutputColorant != ((void*)0)) {

            cmsNamedColorInfo(ContextID, OutputColorant, i, ChannelName, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        }
        else {
            OutputRange = 1;
            sprintf(ChannelName, "Channel #%u", i + 1);
        }

        v = (cmsFloat64Number) Value[i]* OutputRange;

        if (lQuantize)
            v = floor(v + 0.5);

        if (!lUnbounded) {

               if (v < 0)
                      v = 0;
               if (v > OutputRange)
                      v = OutputRange;
        }

        if (Verbose <= 0)
            printf("%.4f ", v);
        else
            printf("%s=%.4f ", ChannelName, v);
    }

    printf("\n");
}
