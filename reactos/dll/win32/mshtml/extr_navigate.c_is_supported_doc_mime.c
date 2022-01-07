
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 char* get_nscategory_entry (char*,char*) ;
 int heap_free (char*) ;
 char* heap_strdupWtoA (int const*) ;
 int nsfree (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static BOOL is_supported_doc_mime(const WCHAR *mime)
{
    char *nscat, *mimea;
    BOOL ret;

    mimea = heap_strdupWtoA(mime);
    if(!mimea)
        return FALSE;

    nscat = get_nscategory_entry("Gecko-Content-Viewers", mimea);

    ret = nscat != ((void*)0) && !strcmp(nscat, "@mozilla.org/content/document-loader-factory;1");

    heap_free(mimea);
    nsfree(nscat);
    return ret;
}
