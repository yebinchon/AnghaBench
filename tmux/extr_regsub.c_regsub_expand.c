
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {scalar_t__ rm_so; scalar_t__ rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 int regsub_copy (char**,size_t*,char const*,scalar_t__,scalar_t__) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static void
regsub_expand(char **buf, size_t *len, const char *with, const char *text,
    regmatch_t *m, u_int n)
{
 const char *cp;
 u_int i;

 for (cp = with; *cp != '\0'; cp++) {
  if (*cp == '\\') {
   cp++;
   if (*cp >= '0' && *cp <= '9') {
    i = *cp - '0';
    if (i < n && m[i].rm_so != m[i].rm_eo) {
     regsub_copy(buf, len, text, m[i].rm_so,
         m[i].rm_eo);
     continue;
    }
   }
  }
  *buf = xrealloc(*buf, (*len) + 2);
  (*buf)[(*len)++] = *cp;
 }
}
