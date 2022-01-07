
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *argv0){
  fprintf(stderr, "Usage: %s DATABASE\n"
                  "   or: %s DATABASE FTS3TABLE ARGS...\n", argv0, argv0);
  fprintf(stderr,
    "ARGS:\n"
    "  big-segments [--top N]                    show the largest segments\n"
    "  doclist BLOCKID OFFSET SIZE [--raw]       Decode a doclist\n"
    "  schema                                    FTS table schema\n"
    "  segdir                                    directory of segments\n"
    "  segment BLOCKID [--raw]                   content of a segment\n"
    "  segment-stats                             info on segment sizes\n"
    "  stat                                      the %%_stat table\n"
    "  vocabulary [--top N]                      document vocabulary\n"
  );
  exit(1);
}
