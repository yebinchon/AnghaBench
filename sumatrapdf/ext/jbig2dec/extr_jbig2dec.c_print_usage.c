
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int
print_usage(void)
{
    fprintf(stderr,
            "Usage: jbig2dec [options] <file.jbig2>\n"
            "   or  jbig2dec [options] <global_stream> <page_stream>\n"
            "\n"
            "  When invoked with a single file, it attempts to parse it as\n"
            "  a normal jbig2 file. Invoked with two files, it treats the\n"
            "  first as the global segments, and the second as the segment\n"
            "  stream for a particular page. This is useful for examining\n"
            "  embedded streams.\n"
            "\n"
            "  available options:\n"
            "    -h --help      this usage summary\n"
            "    -q --quiet     suppress diagnostic output\n"
            "    -v --verbose   set the verbosity level\n"
            "    -d --dump      print the structure of the jbig2 file\n"
            "                   rather than explicitly decoding\n"
            "       --version   program name and version information\n"
            "       --hash      print a hash of the decoded document\n"
            "    -e --embedded  expect embedded bit stream without file header\n"
            "    -o <file>      send decoded output to <file>\n"
            "                   Defaults to the the input with a different\n"
            "                   extension. Pass '-' for stdout.\n"
            "    -t <type>      force a particular output file format\n"



            "                   the only supported option is 'pbm'\n"

            "\n");

    return 1;
}
