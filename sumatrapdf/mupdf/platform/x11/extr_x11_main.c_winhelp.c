
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int fprintf (int ,char*,char*,char*) ;
 char* pdfapp_usage (int *) ;
 char* pdfapp_version (int *) ;
 int stderr ;

void winhelp(pdfapp_t *app)
{
 fprintf(stderr, "%s\n%s", pdfapp_version(app), pdfapp_usage(app));
}
