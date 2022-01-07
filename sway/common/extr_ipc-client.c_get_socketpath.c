
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int free (char*) ;
 char* getenv (char*) ;
 int getline (char**,size_t*,int *) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 char* strdup (char const*) ;

char *get_socketpath(void) {
 const char *swaysock = getenv("SWAYSOCK");
 if (swaysock) {
  return strdup(swaysock);
 }
 char *line = ((void*)0);
 size_t line_size = 0;
 FILE *fp = popen("sway --get-socketpath 2>/dev/null", "r");
 if (fp) {
  ssize_t nret = getline(&line, &line_size, fp);
  pclose(fp);
  if (nret > 0) {

   if (line[nret - 1] == '\n') {
    line[nret - 1] = '\0';
   }
   return line;
  }
 }
 const char *i3sock = getenv("I3SOCK");
 if (i3sock) {
  free(line);
  return strdup(i3sock);
 }
 fp = popen("i3 --get-socketpath 2>/dev/null", "r");
 if (fp) {
  ssize_t nret = getline(&line, &line_size, fp);
  pclose(fp);
  if (nret > 0) {

   if (line[nret - 1] == '\n') {
    line[nret - 1] = '\0';
   }
   return line;
  }
 }
 free(line);
 return ((void*)0);
}
