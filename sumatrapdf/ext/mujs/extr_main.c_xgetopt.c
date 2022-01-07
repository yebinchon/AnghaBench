
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fprintf (int ,char*,char*,char) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* xoptarg ;
 int xoptind ;

__attribute__((used)) static int xgetopt(int argc, char *argv[], char *optstring)
{
 static char *scan = ((void*)0);

 char c;
 char *place;

 xoptarg = ((void*)0);

 if (!scan || *scan == '\0') {
  if (xoptind == 0)
   xoptind++;

  if (xoptind >= argc || argv[xoptind][0] != '-' || argv[xoptind][1] == '\0')
   return EOF;
  if (argv[xoptind][1] == '-' && argv[xoptind][2] == '\0') {
   xoptind++;
   return EOF;
  }

  scan = argv[xoptind]+1;
  xoptind++;
 }

 c = *scan++;
 place = strchr(optstring, c);

 if (!place || c == ':') {
  fprintf(stderr, "%s: unknown option -%c\n", argv[0], c);
  return '?';
 }

 place++;
 if (*place == ':') {
  if (*scan != '\0') {
   xoptarg = scan;
   scan = ((void*)0);
  } else if (xoptind < argc) {
   xoptarg = argv[xoptind];
   xoptind++;
  } else {
   fprintf(stderr, "%s: option requires argument -%c\n", argv[0], c);
   return ':';
  }
 }

 return c;
}
