
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int pdfapp_open_progressive (int *,char*,int,int ) ;

void pdfapp_open(pdfapp_t *app, char *filename, int reload)
{
 pdfapp_open_progressive(app, filename, reload, 0);
}
