
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;


 int assert (int) ;
 char* calloc (int,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int zed_strings_count (int *) ;
 char* zed_strings_first (int *) ;
 char* zed_strings_next (int *) ;

__attribute__((used)) static char **
_zed_exec_create_env(zed_strings_t *zsp)
{
 int num_ptrs;
 int buflen;
 char *buf;
 char **pp;
 char *p;
 const char *q;
 int i;
 int len;

 num_ptrs = zed_strings_count(zsp) + 1;
 buflen = num_ptrs * sizeof (char *);
 for (q = zed_strings_first(zsp); q; q = zed_strings_next(zsp))
  buflen += strlen(q) + 1;

 buf = calloc(1, buflen);
 if (!buf)
  return (((void*)0));

 pp = (char **)buf;
 p = buf + (num_ptrs * sizeof (char *));
 i = 0;
 for (q = zed_strings_first(zsp); q; q = zed_strings_next(zsp)) {
  pp[i] = p;
  len = strlen(q) + 1;
  memcpy(p, q, len);
  p += len;
  i++;
 }
 pp[i] = ((void*)0);
 assert(buf + buflen == p);
 return ((char **)buf);
}
