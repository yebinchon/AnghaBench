
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int * xmlCanonicPath (int const*) ;

xmlChar *
xmlNormalizeWindowsPath(const xmlChar *path)
{
    return xmlCanonicPath(path);
}
