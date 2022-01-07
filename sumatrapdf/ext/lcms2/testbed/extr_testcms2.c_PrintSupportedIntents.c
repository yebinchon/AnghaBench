
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t cmsUInt32Number ;


 int DbgThread () ;
 size_t cmsGetSupportedIntents (int ,int,size_t*,char**) ;
 int printf (char*,...) ;

__attribute__((used)) static
void PrintSupportedIntents(void)
{
    cmsUInt32Number n, i;
    cmsUInt32Number Codes[200];
    char* Descriptions[200];

    n = cmsGetSupportedIntents(DbgThread(), 200, Codes, Descriptions);

    printf("Supported intents:\n");
    for (i=0; i < n; i++) {
        printf("\t%u - %s\n", Codes[i], Descriptions[i]);
    }
    printf("\n");
}
