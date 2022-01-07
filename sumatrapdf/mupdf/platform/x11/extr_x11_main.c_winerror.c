
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int cleanup (int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void winerror(pdfapp_t *app, char *msg)
{
 fprintf(stderr, "mupdf: error: %s\n", msg);
 cleanup(app);
 exit(1);
}
