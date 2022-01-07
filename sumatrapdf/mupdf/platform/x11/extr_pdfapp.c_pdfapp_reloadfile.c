
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int docpath; } ;
typedef TYPE_1__ pdfapp_t ;


 int PATH_MAX ;
 int fz_strlcpy (char*,int ,int) ;
 int pdfapp_close (TYPE_1__*) ;
 int pdfapp_open (TYPE_1__*,char*,int) ;

void pdfapp_reloadfile(pdfapp_t *app)
{
 char filename[PATH_MAX];
 fz_strlcpy(filename, app->docpath, PATH_MAX);
 pdfapp_close(app);
 pdfapp_open(app, filename, 1);
}
