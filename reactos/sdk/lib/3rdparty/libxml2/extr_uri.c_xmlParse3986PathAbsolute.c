
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int cleanup; int * path; } ;


 int * STRNDUP (char const*,int) ;
 int xmlFree (int *) ;
 int xmlParse3986Segment (char const**,int ,int) ;
 int * xmlURIUnescapeString (char const*,int,int *) ;

__attribute__((used)) static int
xmlParse3986PathAbsolute(xmlURIPtr uri, const char **str)
{
    const char *cur;
    int ret;

    cur = *str;

    if (*cur != '/')
        return(1);
    cur++;
    ret = xmlParse3986Segment(&cur, 0, 0);
    if (ret == 0) {
 while (*cur == '/') {
     cur++;
     ret = xmlParse3986Segment(&cur, 0, 1);
     if (ret != 0) return(ret);
 }
    }
    if (uri != ((void*)0)) {
 if (uri->path != ((void*)0)) xmlFree(uri->path);
        if (cur != *str) {
            if (uri->cleanup & 2)
                uri->path = STRNDUP(*str, cur - *str);
            else
                uri->path = xmlURIUnescapeString(*str, cur - *str, ((void*)0));
        } else {
            uri->path = ((void*)0);
        }
    }
    *str = cur;
    return (0);
}
