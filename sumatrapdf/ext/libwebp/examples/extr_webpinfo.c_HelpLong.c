
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void HelpLong(void) {
  printf("Usage: webpinfo [options] in_files\n"
         "Note: there could be multiple input files;\n"
         "      options must come before input files.\n"
         "Options:\n"
         "  -version ........... Print version number and exit.\n"
         "  -quiet ............. Do not show chunk parsing information.\n"
         "  -diag .............. Show parsing error diagnosis.\n"
         "  -summary ........... Show chunk stats summary.\n"
         "  -bitstream_info .... Parse bitstream header.\n");
}
