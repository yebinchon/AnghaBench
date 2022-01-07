
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre ;


 int PCRE_UCP ;
 int PCRE_UTF8 ;
 int error ;
 int malloc (int) ;
 int * pcre_compile (char*,int,char const**,int*,int *) ;
 int snprintf (int ,int,char const*,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool generate_regex(pcre **regex, char *value) {
 const char *reg_err;
 int offset;

 *regex = pcre_compile(value, PCRE_UTF8 | PCRE_UCP, &reg_err, &offset, ((void*)0));

 if (!*regex) {
  const char *fmt = "Regex compilation for '%s' failed: %s";
  int len = strlen(fmt) + strlen(value) + strlen(reg_err) - 3;
  error = malloc(len);
  snprintf(error, len, fmt, value, reg_err);
  return 0;
 }

 return 1;
}
