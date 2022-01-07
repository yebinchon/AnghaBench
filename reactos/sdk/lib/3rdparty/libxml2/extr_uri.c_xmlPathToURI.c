
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xmlURIPtr ;
struct TYPE_4__ {char* path; } ;
typedef TYPE_1__ xmlURI ;
typedef char xmlChar ;
typedef int temp ;


 int memset (TYPE_1__*,int ,int) ;
 char* xmlCanonicPath (char const*) ;
 int xmlFree (char*) ;
 int xmlFreeURI (int *) ;
 int * xmlParseURI (char const*) ;
 char* xmlSaveUri (TYPE_1__*) ;
 char* xmlStrdup (char const*) ;

xmlChar *
xmlPathToURI(const xmlChar *path)
{
    xmlURIPtr uri;
    xmlURI temp;
    xmlChar *ret, *cal;

    if (path == ((void*)0))
        return(((void*)0));

    if ((uri = xmlParseURI((const char *) path)) != ((void*)0)) {
 xmlFreeURI(uri);
 return xmlStrdup(path);
    }
    cal = xmlCanonicPath(path);
    if (cal == ((void*)0))
        return(((void*)0));
    memset(&temp, 0, sizeof(temp));
    temp.path = (char *) cal;
    ret = xmlSaveUri(&temp);
    xmlFree(cal);
    return(ret);
}
