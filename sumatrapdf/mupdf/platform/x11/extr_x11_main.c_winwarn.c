
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int fprintf (int ,char*,char*) ;
 int showmessage (int *,int,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;

void winwarn(pdfapp_t *app, char *msg)
{
 char buf[1024];
 snprintf(buf, sizeof buf, "warning: %s", msg);
 showmessage(app, 10, buf);
 fprintf(stderr, "mupdf: %s\n", buf);
}
