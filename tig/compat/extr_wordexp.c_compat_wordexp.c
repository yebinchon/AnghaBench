
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;


 char** calloc (int,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

int
compat_wordexp (const char *words, wordexp_t *pwordexp, int flags)
{
 char *expanded = ((void*)0);
 const char *home = getenv("HOME");

 if (home && words[0] == '~' && (words[1] == '/' || words[1] == 0)) {
  size_t len = strlen(home) + strlen(words + 1) + 1;
  if ((expanded = malloc(len)) && !snprintf(expanded, len, "%s%s", home, words + 1)) {
   free(expanded);
   return -1;
  }
 } else {
  expanded = strdup(words);
 }

 if (!expanded)
  return -1;

 pwordexp->we_wordv = calloc(2, sizeof(*pwordexp->we_wordv));
 if (!pwordexp->we_wordv) {
  free(expanded);
  return -1;
 }
 pwordexp->we_wordv[0] = expanded;

 return 0;
}
