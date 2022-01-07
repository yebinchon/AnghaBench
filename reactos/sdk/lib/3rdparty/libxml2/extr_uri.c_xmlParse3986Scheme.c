
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int * scheme; } ;


 scalar_t__ ISA_ALPHA (char const*) ;
 scalar_t__ ISA_DIGIT (char const*) ;
 int * STRNDUP (char const*,int) ;
 int xmlFree (int *) ;

__attribute__((used)) static int
xmlParse3986Scheme(xmlURIPtr uri, const char **str) {
    const char *cur;

    if (str == ((void*)0))
 return(-1);

    cur = *str;
    if (!ISA_ALPHA(cur))
 return(2);
    cur++;
    while (ISA_ALPHA(cur) || ISA_DIGIT(cur) ||
           (*cur == '+') || (*cur == '-') || (*cur == '.')) cur++;
    if (uri != ((void*)0)) {
 if (uri->scheme != ((void*)0)) xmlFree(uri->scheme);
 uri->scheme = STRNDUP(*str, cur - *str);
    }
    *str = cur;
    return(0);
}
