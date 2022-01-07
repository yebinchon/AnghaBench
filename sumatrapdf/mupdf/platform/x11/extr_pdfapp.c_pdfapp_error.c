
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int winerror (int *,char*) ;

void pdfapp_error(pdfapp_t *app, char *msg)
{
 winerror(app, msg);
}
