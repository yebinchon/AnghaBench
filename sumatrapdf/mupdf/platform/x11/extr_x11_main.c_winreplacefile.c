
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int pdfapp_warn (int *,char*) ;
 int rename (char*,char*) ;

void winreplacefile(pdfapp_t *app, char *source, char *target)
{
 if (rename(source, target) == -1)
  pdfapp_warn(app, "unable to rename file");
}
