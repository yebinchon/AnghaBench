
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int docpath; } ;
typedef TYPE_1__ pdfapp_t ;


 int PATH_MAX ;
 int fz_cleanname (char*) ;
 int fz_dirname (char*,int ,int) ;
 int fz_snprintf (char*,int,char*,char*,char*,char*) ;
 int getcwd (char*,int) ;
 int strncmp (char*,char*,int) ;
 int winopenuri (TYPE_1__*,char*) ;

__attribute__((used)) static void pdfapp_gotouri(pdfapp_t *app, char *uri)
{
 char buf[PATH_MAX];


 if (!strncmp(uri, "file://", 7) && uri[7] != '/')
 {
  char buf_base[PATH_MAX];
  char buf_cwd[PATH_MAX];
  fz_dirname(buf_base, app->docpath, sizeof buf_base);
  getcwd(buf_cwd, sizeof buf_cwd);
  fz_snprintf(buf, sizeof buf, "file://%s/%s/%s", buf_cwd, buf_base, uri+7);
  fz_cleanname(buf+7);
  uri = buf;
 }

 winopenuri(app, uri);
}
