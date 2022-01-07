
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlURIPtr ;
typedef int xmlChar ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int xmlFree (int *) ;
 int * xmlSaveUri (int ) ;

void
xmlPrintURI(FILE *stream, xmlURIPtr uri) {
    xmlChar *out;

    out = xmlSaveUri(uri);
    if (out != ((void*)0)) {
 fprintf(stream, "%s", (char *) out);
 xmlFree(out);
    }
}
