
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(char *msg, int exit_value)
{
 (void) fprintf(stderr, "get_diff file redacted_file\n");
 (void) fprintf(stderr, "%s\n", msg);
 exit(exit_value);
}
