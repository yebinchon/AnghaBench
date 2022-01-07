
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int DISCARD ;
 int fprintf (int ,char*) ;
 int stderr ;

int winsavequery(pdfapp_t *app)
{
 fprintf(stderr, "mupdf: discarded changes to document\n");

 return DISCARD;
}
