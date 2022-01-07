
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isDirSep (char const) ;
 int stderr ;

__attribute__((used)) static void usage(const char *argv0){
  int i;
  const char *zTail = argv0;
  for(i=0; argv0[i]; i++){
    if( isDirSep(argv0[i]) ) zTail = argv0+i+1;
  }
  fprintf(stderr,"Usage: %s DATABASE ?OPTIONS? ?SCRIPT?\n", zTail);
  fprintf(stderr,
    "Options:\n"
    "   --errlog FILENAME           Write errors to FILENAME\n"
    "   --journalmode MODE          Use MODE as the journal_mode\n"
    "   --log FILENAME              Log messages to FILENAME\n"
    "   --quiet                     Suppress unnecessary output\n"
    "   --vfs NAME                  Use NAME as the VFS\n"
    "   --repeat N                  Repeat the test N times\n"
    "   --sqltrace                  Enable SQL tracing\n"
    "   --sync                      Enable synchronous disk writes\n"
    "   --timeout MILLISEC          Busy timeout is MILLISEC\n"
    "   --trace BOOLEAN             Enable or disable tracing\n"
  );
  exit(1);
}
