
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 int quitnow (int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void sysfail(const char *what) {
  fprintf(stderr,"adnsresfilter: system call failed: %s: %s\n",what,strerror(errno));
  quitnow(2);
}
