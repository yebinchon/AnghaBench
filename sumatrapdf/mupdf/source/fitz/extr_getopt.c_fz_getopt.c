
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fprintf (int ,char*,char*,char) ;
 char* optarg ;
 int optind ;
 char* scan ;
 int stderr ;
 char* strchr (char*,char) ;

int
getopt(int argc, char *argv[], char *optstring)
{
 char c;
 char *place;

 optarg = ((void*)0);

 if (!scan || *scan == '\0') {
  if (optind == 0)
   optind++;

  if (optind >= argc || argv[optind][0] != '-' || argv[optind][1] == '\0')
   return EOF;
  if (argv[optind][1] == '-' && argv[optind][2] == '\0') {
   optind++;
   return EOF;
  }

  scan = argv[optind]+1;
  optind++;
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
   optarg = scan;
   scan = ((void*)0);
  } else if( optind < argc ) {
   optarg = argv[optind];
   optind++;
  } else {
   fprintf(stderr, "%s: option requires argument -%c\n", argv[0], c);
   return ':';
  }
 }

 return c;
}
