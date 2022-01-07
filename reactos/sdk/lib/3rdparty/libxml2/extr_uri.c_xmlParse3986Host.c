
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int * server; int * authority; } ;


 scalar_t__ ISA_DIGIT (char const*) ;
 scalar_t__ ISA_PCT_ENCODED (char const*) ;
 scalar_t__ ISA_SUB_DELIM (char const*) ;
 scalar_t__ ISA_UNRESERVED (char const*) ;
 int NEXT (char const*) ;
 int * STRNDUP (char const*,int) ;
 int xmlFree (int *) ;
 scalar_t__ xmlParse3986DecOctet (char const**) ;
 int * xmlURIUnescapeString (char const*,int,int *) ;

__attribute__((used)) static int
xmlParse3986Host(xmlURIPtr uri, const char **str)
{
    const char *cur = *str;
    const char *host;

    host = cur;



    if (*cur == '[') {
        cur++;
 while ((*cur != ']') && (*cur != 0))
     cur++;
 if (*cur != ']')
     return(1);
 cur++;
 goto found;
    }



    if (ISA_DIGIT(cur)) {
        if (xmlParse3986DecOctet(&cur) != 0)
     goto not_ipv4;
 if (*cur != '.')
     goto not_ipv4;
 cur++;
        if (xmlParse3986DecOctet(&cur) != 0)
     goto not_ipv4;
 if (*cur != '.')
     goto not_ipv4;
        if (xmlParse3986DecOctet(&cur) != 0)
     goto not_ipv4;
 if (*cur != '.')
     goto not_ipv4;
        if (xmlParse3986DecOctet(&cur) != 0)
     goto not_ipv4;
 goto found;
not_ipv4:
        cur = *str;
    }



    while (ISA_UNRESERVED(cur) || ISA_PCT_ENCODED(cur) || ISA_SUB_DELIM(cur))
        NEXT(cur);
found:
    if (uri != ((void*)0)) {
 if (uri->authority != ((void*)0)) xmlFree(uri->authority);
 uri->authority = ((void*)0);
 if (uri->server != ((void*)0)) xmlFree(uri->server);
 if (cur != host) {
     if (uri->cleanup & 2)
  uri->server = STRNDUP(host, cur - host);
     else
  uri->server = xmlURIUnescapeString(host, cur - host, ((void*)0));
 } else
     uri->server = ((void*)0);
    }
    *str = cur;
    return(0);
}
