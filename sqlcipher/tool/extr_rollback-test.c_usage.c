
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void usage(char *argv0){
  fprintf(stderr,
    "Usage: %s new [-utf8] [-utf16le] [-utf16be] [-pagesize=N] DATABASE\n"
    "       %s check DATABASE\n"
    "       %s crash [-wal] DATABASE\n",
    argv0, argv0, argv0
  );
  exit(1);
}
