
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int closing ;
 scalar_t__ pdfapp_preclose (int *) ;

void winclose(pdfapp_t *app)
{
 if (pdfapp_preclose(app))
 {
  closing = 1;
 }
}
