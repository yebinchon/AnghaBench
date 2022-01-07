
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdname ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void) fprintf(stderr,
     "Usage: %s [-c cachefile] [-d dir] <subcommand> <args> ...\n"
     "where <subcommand> <args> is one of the following:\n"
     "\n", cmdname);

 (void) fprintf(stderr,
     "    feature stat <pool>\n"
     "        print information about enabled features\n"
     "    feature enable [-r] [-d desc] <pool> <feature>\n"
     "        add a new enabled feature to the pool\n"
     "        -d <desc> sets the feature's description\n"
     "        -r set read-only compatible flag for feature\n"
     "    feature ref [-md] <pool> <feature>\n"
     "        change the refcount on the given feature\n"
     "        -d decrease instead of increase the refcount\n"
     "        -m add the feature to the label if increasing refcount\n"
     "\n"
     "    <feature> : should be a feature guid\n");
 exit(1);
}
