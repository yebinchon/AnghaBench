
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t cmsUInt32Number ;
typedef int cmsContext ;


 int SW ;
 size_t cmsGetSupportedIntents (int ,int,size_t*,char**) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void PrintRenderingIntents(cmsContext ContextID)
{
    cmsUInt32Number Codes[200];
    char* Descriptions[200];
    cmsUInt32Number n, i;

    fprintf(stderr, "%ct<n> rendering intent:\n\n", SW);

    n = cmsGetSupportedIntents(ContextID, 200, Codes, Descriptions);

    for (i=0; i < n; i++) {
        fprintf(stderr, "\t%u - %s\n", Codes[i], Descriptions[i]);
    }
    fprintf(stderr, "\n");
}
