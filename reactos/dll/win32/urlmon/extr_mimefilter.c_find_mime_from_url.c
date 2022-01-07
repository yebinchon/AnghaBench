
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int find_mime_from_ext (char*,char**) ;
 char* heap_alloc (unsigned int) ;
 int heap_free (char*) ;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static HRESULT find_mime_from_url(const WCHAR *url, WCHAR **ret)
{
    const WCHAR *ptr, *end_ptr;
    WCHAR *ext = ((void*)0);
    HRESULT hres;

    for(end_ptr = url; *end_ptr; end_ptr++) {
        if(*end_ptr == '?' || *end_ptr == '#')
            break;
    }

    for(ptr = end_ptr; ptr >= url; ptr--) {
        if(*ptr == '.')
            break;
    }

    if(ptr < url)
        return E_FAIL;

    if(*end_ptr) {
        unsigned len = end_ptr-ptr;

        ext = heap_alloc((len+1)*sizeof(WCHAR));
        if(!ext)
            return E_OUTOFMEMORY;

        memcpy(ext, ptr, len*sizeof(WCHAR));
        ext[len] = 0;
    }

    hres = find_mime_from_ext(ext ? ext : ptr, ret);
    heap_free(ext);
    return hres;
}
