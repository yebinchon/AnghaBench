
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * we_wordv; } ;
typedef TYPE_1__ wordexp_t ;


 int SIZEOF_STR ;
 int WRDE_NOCMD ;
 char* getenv (char*) ;
 size_t strcspn (char const*,char*) ;
 int string_format (char*,char*,char*,char const*) ;
 int string_ncopy_do (char*,size_t,char const*,int ) ;
 int string_nformat (char*,size_t,int *,char*,char const*,...) ;
 int strlen (char const*) ;
 scalar_t__ wordexp (char*,TYPE_1__*,int ) ;
 int wordfree (TYPE_1__*) ;

bool
path_expand(char *dst, size_t dstlen, const char *src)
{
 if (!src)
  return 0;

 if (src[0] == '~') {

  const char *ifs = getenv("IFS") ? getenv("IFS") : " \t\n";
  wordexp_t we_result;
  size_t metachar_pos;
  char metachars[SIZEOF_STR];
  char leading[SIZEOF_STR];

  string_format(metachars, "%s%s", "/$|&;<>(){}`", ifs);
  metachar_pos = strcspn(src, metachars);
  if (src[metachar_pos] == '/' || src[metachar_pos] == 0) {
   string_nformat(leading, metachar_pos + 1, ((void*)0), "%s", src);
   if (wordexp(leading, &we_result, WRDE_NOCMD))
    return 0;
   string_nformat(dst, dstlen, ((void*)0), "%s%s", we_result.we_wordv[0], src + metachar_pos);
   wordfree(&we_result);
   return 1;
  }
 }


 string_ncopy_do(dst, dstlen, src, strlen(src));
 return 1;
}
