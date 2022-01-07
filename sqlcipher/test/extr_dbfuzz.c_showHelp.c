
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void showHelp(const char *zArgv0){
  printf("Usage: %s [options] DATABASE ...\n", zArgv0);
  printf(
"Read databases into an in-memory filesystem.  Run test SQL as specified\n"
"by command-line arguments or from\n"
"\n"
"    SELECT group_concat(sql) FROM autoexec;\n"
"\n"
"Options:\n"
"  --help              Show this help text\n"
"  -q|--quiet          Reduced output\n"
"  --limit-mem N       Limit memory used by test SQLite instances to N bytes\n"
"  --limit-vdbe        Panic if any test runs for more than 100,000 cycles\n"
"  --no-lookaside      Disable the lookaside memory allocator\n"
"  --timeout N         Timeout after N seconds.\n"
"  --trace             Show the results of each SQL command\n"
"  -v|--verbose        Increased output.  Repeat for more output.\n"
  );
  exit(0);
}
