
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int end; unsigned int p; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;


 int STRNCPY (char*,char*,unsigned int) ;
 int hexdump (unsigned int,unsigned int) ;
 int lspci_process_line ;
 int printf (char*) ;
 int str_handle_lines (int *,char*,char**,int ,int *) ;
 int xfree (char*) ;
 char* xmalloc (unsigned int) ;

__attribute__((used)) static void
lspci_process(RDPCLIENT * This, STREAM s)
{
 unsigned int pkglen;
 static char *rest = ((void*)0);
 char *buf;

 pkglen = s->end - s->p;

 buf = xmalloc(pkglen + 1);
 STRNCPY(buf, (char *) s->p, pkglen + 1);





 str_handle_lines(This, buf, &rest, lspci_process_line, ((void*)0));
 xfree(buf);
}
