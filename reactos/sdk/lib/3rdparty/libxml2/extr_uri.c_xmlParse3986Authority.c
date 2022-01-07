
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlURIPtr ;


 int xmlParse3986Host (int ,char const**) ;
 int xmlParse3986Port (int ,char const**) ;
 int xmlParse3986Userinfo (int ,char const**) ;

__attribute__((used)) static int
xmlParse3986Authority(xmlURIPtr uri, const char **str)
{
    const char *cur;
    int ret;

    cur = *str;



    ret = xmlParse3986Userinfo(uri, &cur);
    if ((ret != 0) || (*cur != '@'))
        cur = *str;
    else
        cur++;
    ret = xmlParse3986Host(uri, &cur);
    if (ret != 0) return(ret);
    if (*cur == ':') {
        cur++;
        ret = xmlParse3986Port(uri, &cur);
 if (ret != 0) return(ret);
    }
    *str = cur;
    return(0);
}
