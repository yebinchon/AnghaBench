
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xmlFileOpen_real (char const*) ;
 int xmlFree (char*) ;
 char* xmlURIUnescapeString (char const*,int ,int *) ;

void *
xmlFileOpen (const char *filename) {
    char *unescaped;
    void *retval;

    retval = xmlFileOpen_real(filename);
    if (retval == ((void*)0)) {
 unescaped = xmlURIUnescapeString(filename, 0, ((void*)0));
 if (unescaped != ((void*)0)) {
     retval = xmlFileOpen_real(unescaped);
     xmlFree(unescaped);
 }
    }

    return retval;
}
