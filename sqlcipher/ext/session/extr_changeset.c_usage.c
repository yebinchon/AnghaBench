
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *argv0){
  fprintf(stderr, "Usage: %s FILENAME COMMAND ...\n", argv0);
  fprintf(stderr,
    "COMMANDs:\n"
    "   apply DB           Apply the changeset to database file DB\n"
    "   concat FILE2 OUT   Concatenate FILENAME and FILE2 into OUT\n"
    "   dump               Show the complete content of the changeset\n"
    "   invert OUT         Write an inverted changeset into file OUT\n"
    "   sql                Give a pseudo-SQL rendering of the changeset\n"
  );
  exit(1);
}
