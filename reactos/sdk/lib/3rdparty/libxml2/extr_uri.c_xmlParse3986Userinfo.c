
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int * user; } ;


 scalar_t__ ISA_PCT_ENCODED (char const*) ;
 scalar_t__ ISA_SUB_DELIM (char const*) ;
 scalar_t__ ISA_UNRESERVED (char const*) ;
 int NEXT (char const*) ;
 int * STRNDUP (char const*,int) ;
 int xmlFree (int *) ;
 int * xmlURIUnescapeString (char const*,int,int *) ;

__attribute__((used)) static int
xmlParse3986Userinfo(xmlURIPtr uri, const char **str)
{
    const char *cur;

    cur = *str;
    while (ISA_UNRESERVED(cur) || ISA_PCT_ENCODED(cur) ||
           ISA_SUB_DELIM(cur) || (*cur == ':'))
 NEXT(cur);
    if (*cur == '@') {
 if (uri != ((void*)0)) {
     if (uri->user != ((void*)0)) xmlFree(uri->user);
     if (uri->cleanup & 2)
  uri->user = STRNDUP(*str, cur - *str);
     else
  uri->user = xmlURIUnescapeString(*str, cur - *str, ((void*)0));
 }
 *str = cur;
 return(0);
    }
    return(1);
}
