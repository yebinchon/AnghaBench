
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char const*,char const*) ;

__attribute__((used)) static inline char *argsep_next_interesting(const char *src, const char *delim) {
 char *special = strpbrk(src, "\"'\\");
 char *next_delim = strpbrk(src, delim);
 if (!special) {
  return next_delim;
 }
 if (!next_delim) {
  return special;
 }
 return (next_delim < special) ? next_delim : special;
}
