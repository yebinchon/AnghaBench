
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;



const xmlChar *
xmlSplitQName3(const xmlChar *name, int *len) {
    int l = 0;

    if (name == ((void*)0)) return(((void*)0));
    if (len == ((void*)0)) return(((void*)0));


    if (name[0] == ':')
 return(((void*)0));





    while ((name[l] != 0) && (name[l] != ':'))
 l++;

    if (name[l] == 0)
 return(((void*)0));

    *len = l;

    return(&name[l+1]);
}
