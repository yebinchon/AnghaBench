
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char*,int ) ;
 int stdout ;

__attribute__((used)) static void printhelp(FILE *file) {
  fputs("usage: adnslogres [<options>] [<logfile>]\n"
 "       adnslogres --version|--help\n"
 "options: -c <concurrency>  set max number of outstanding queries\n"



 "         -d                turn on debugging\n"
 "         -C <config>       use instead of contents of resolv.conf\n",
 stdout);
}
