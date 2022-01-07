
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VERSION ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 char* progname ;
 int stderr ;

__attribute__((used)) __attribute__ ((noreturn)) static void
show_version()
{
        fprintf(stderr, "%s: %s\n\n%s\n",progname, VERSION,
  "xhyve is a port of FreeBSD's bhyve hypervisor to OS X that\n"
  "works entirely in userspace and has no other dependencies.\n\n"
  "Homepage: http://www.xhyve.xyz\n"
  "License: BSD\n");
  exit(0);
}
