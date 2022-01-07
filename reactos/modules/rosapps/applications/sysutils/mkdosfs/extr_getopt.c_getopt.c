
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char* const,int) ;
 char* optarg ;
 scalar_t__ opterr ;
 int optind ;
 int optopt ;
 int stderr ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t subopt ;
 int suboptind ;

int getopt(int argc, char *const argv[], const char * optstring)
{
 char *curopt;
 char *p;
 int cursubopt;

 if (suboptind == optind-1 && argv[suboptind][subopt] != '\0') {
  curopt = (char *)argv[suboptind];
 } else {
  curopt = (char *)argv[optind];
  if (curopt == ((void*)0) || curopt[0] != '-' || strcmp(curopt, "-") == 0)
   return -1;
  suboptind = optind;
  subopt = 1;
  optind++;
  if (strcmp(curopt, "--") == 0)
   return -1;
 }
 cursubopt = subopt++;
 if ((p = strchr(optstring, curopt[cursubopt])) == ((void*)0)) {
  optopt = curopt[cursubopt];
  if (opterr)
   fprintf(stderr, "%s: illegal option -- %c\n", argv[0], optopt);
  return '?';
 }
 if (p[1] == ':') {
  if (curopt[cursubopt+1] != '\0') {
   optarg = curopt+cursubopt+1;
   suboptind++;
   return p[0];
  }
  if (argv[optind] == ((void*)0)) {
   optopt = p[0];
   if (opterr)
    fprintf(stderr, "%s: option requires an argument -- %c\n", argv[0], optopt);
   if (*optstring == ':')
    return ':';
   return '?';
  }
  optarg = argv[optind++];
 }
 return p[0];
}
