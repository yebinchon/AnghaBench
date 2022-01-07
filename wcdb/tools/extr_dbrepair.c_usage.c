
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;
 int puts (char*) ;

__attribute__((used)) static void usage(const char *argv0)
{
 printf("USAGE:\n"
  "  %1$s --output=<output_path> [OPTIONS] <db_path>\n"
  "  %1$s --save-master=<master_path> [OPTIONS] <db_path>\n",
  argv0);
 puts("\n"
 "OUTPUT OPTIONS:\n"
 "  -o, --output=<path>        Output recovered data to new SQLite database.\n"
 "  -m, --load-master=<path>   Load previously saved master info from <path>.\n"
 "  -M, --save-master=<path>   Save master info and do no recover.\n"
 "                             <db_path> should be database that's not corrupted.\n"
 "  -f, --filter=<table>       Add <table> to the filter. If one or more table is in the\n"
 "                             filter, only filtered tables is read and recovered.\n"
 "\n"
 "CIPHER OPTIONS:\n"
 "  -k, --in-key=<key>         Specify the input key used to read database in <db_path>.\n"
 "  -K, --out-key=<key>        Specify the output key used to write '--output' database.\n"
 "      --page-size=<size>     Specify page size of the encrypted input database.\n"
 "      --version=<1|2|3>      Use SQLCipher format version 1.x, 2.x or 3.x.\n"
 "\n"
    "MISCELLANEOUS OPTIONS:\n"
    "  -h, --help                 Show this help message and exit.\n"
    "\n");
 exit(1);
}
