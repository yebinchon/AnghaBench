
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInfoType ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int cmsGetProfileInfoASCII (int ,int ,int ,char*,char*,char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int printf (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static
void PrintInfo(cmsContext ContextID, cmsHPROFILE h, cmsInfoType Info)
{
    char* text;
    int len;

    len = cmsGetProfileInfoASCII(ContextID, h, Info, "en", "US", ((void*)0), 0);
    if (len == 0) return;

    text = (char*) malloc(len * sizeof(char));
    if (text == ((void*)0)) return;

    cmsGetProfileInfoASCII(ContextID, h, Info, "en", "US", text, len);

    if (strlen(text) > 0)
        printf("%s\n", text);

    free(text);
}
