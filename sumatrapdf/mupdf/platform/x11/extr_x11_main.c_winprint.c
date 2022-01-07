
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int fprintf (int ,char*) ;
 int stderr ;

void winprint(pdfapp_t *app)
{
 fprintf(stderr, "The MuPDF library supports printing, but this application currently does not\n");
}
