
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int FatalError (char*) ;
 char SW ;
 char* letP ;
 char* strchr (char*,unsigned char) ;
 char* xoptarg ;
 scalar_t__ xopterr ;
 int xoptind ;

__attribute__((used)) static
int xgetopt(int argc, char *argv[], char *optionS)
{
 unsigned char ch;
 char *optP;

 if (SW == 0) {
  SW = '/';
 }

 if (argc > xoptind) {
  if (letP == ((void*)0)) {
   if ((letP = argv[xoptind]) == ((void*)0) ||
    *(letP++) != SW) goto gopEOF;
   if (*letP == SW) {
    xoptind++; goto gopEOF;
   }
  }
  if (0 == (ch = *(letP++))) {
   xoptind++; goto gopEOF;
  }
  if (':' == ch || (optP = strchr(optionS, ch)) == ((void*)0))
   goto gopError;
  if (':' == *(++optP)) {
   xoptind++;
   if (0 == *letP) {
    if (argc <= xoptind) goto gopError;
    letP = argv[xoptind++];
   }
   xoptarg = letP;
   letP = ((void*)0);
  } else {
   if (0 == *letP) {
    xoptind++;
    letP = ((void*)0);
   }
   xoptarg = ((void*)0);
  }
  return ch;
 }
gopEOF:
 xoptarg = letP = ((void*)0);
 return EOF;

gopError:
 xoptarg = ((void*)0);
 if (xopterr)
  FatalError ("get command line option");
 return ('?');
}
