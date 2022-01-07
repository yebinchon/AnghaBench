
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DEFAULT_VERBOSITY ;
 char* KILL_PROCESS_GROUP_GROUP_ENV_VAR ;
 char* SUBREAPER_ENV_VAR ;
 char* TINI_VERSION_STRING ;
 char* VERBOSITY_ENV_VAR ;
 char* basename (char* const) ;
 int fprintf (int * const,char*,...) ;

void print_usage(char* const name, FILE* const file) {
 fprintf(file, "%s (%s)\n", basename(name), TINI_VERSION_STRING);




 fprintf(file, "Usage: %s [OPTIONS] PROGRAM -- [ARGS] | --version\n\n", basename(name));

 fprintf(file, "Execute a program under the supervision of a valid init process (%s)\n\n", basename(name));

 fprintf(file, "Command line options:\n\n");

 fprintf(file, "  --version: Show version and exit.\n");



 fprintf(file, "  -h: Show this help message and exit.\n");



 fprintf(file, "  -p SIGNAL: Trigger SIGNAL when parent dies, e.g. \"-p SIGKILL\".\n");
 fprintf(file, "  -v: Generate more verbose output. Repeat up to 3 times.\n");
 fprintf(file, "  -w: Print a warning when processes are getting reaped.\n");
 fprintf(file, "  -g: Send signals to the child's process group.\n");
 fprintf(file, "  -e EXIT_CODE: Remap EXIT_CODE (from 0 to 255) to 0.\n");
 fprintf(file, "  -l: Show license and exit.\n");


 fprintf(file, "\n");

 fprintf(file, "Environment variables:\n\n");



 fprintf(file, "  %s: Set the verbosity level (default: %d).\n", VERBOSITY_ENV_VAR, DEFAULT_VERBOSITY);
 fprintf(file, "  %s: Send signals to the child's process group.\n", KILL_PROCESS_GROUP_GROUP_ENV_VAR);

 fprintf(file, "\n");
}
