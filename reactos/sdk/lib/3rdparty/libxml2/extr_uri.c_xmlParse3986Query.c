
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int * query_raw; int * query; } ;


 scalar_t__ ISA_PCHAR (char const*) ;
 scalar_t__ IS_UNWISE (char const*) ;
 int NEXT (char const*) ;
 void* STRNDUP (char const*,int) ;
 int xmlFree (int *) ;
 int * xmlURIUnescapeString (char const*,int,int *) ;

__attribute__((used)) static int
xmlParse3986Query(xmlURIPtr uri, const char **str)
{
    const char *cur;

    if (str == ((void*)0))
        return (-1);

    cur = *str;

    while ((ISA_PCHAR(cur)) || (*cur == '/') || (*cur == '?') ||
           ((uri != ((void*)0)) && (uri->cleanup & 1) && (IS_UNWISE(cur))))
        NEXT(cur);
    if (uri != ((void*)0)) {
        if (uri->query != ((void*)0))
            xmlFree(uri->query);
 if (uri->cleanup & 2)
     uri->query = STRNDUP(*str, cur - *str);
 else
     uri->query = xmlURIUnescapeString(*str, cur - *str, ((void*)0));




 if (uri->query_raw != ((void*)0))
     xmlFree (uri->query_raw);
 uri->query_raw = STRNDUP (*str, cur - *str);
    }
    *str = cur;
    return (0);
}
