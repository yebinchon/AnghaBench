
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 void* RegisterClipboardFormatW (char const*) ;
 void* cf_embed_source ;
 void* cf_embedded_object ;
 void* cf_filename ;
 void* cf_filenamew ;
 void* cf_link_source ;
 void* cf_link_src_descriptor ;
 void* cf_object_descriptor ;
 void* cf_ownerlink ;

__attribute__((used)) static void register_clipboard_formats(void)
{

    static const WCHAR CF_EMBEDSOURCEW[] = { 'E','m','b','e','d',' ','S','o','u','r','c','e',0 };
    static const WCHAR CF_EMBEDDEDOBJECTW[] = { 'E','m','b','e','d','d','e','d',' ','O','b','j','e','c','t',0 };
    static const WCHAR CF_LINKSOURCEW[] = { 'L','i','n','k',' ','S','o','u','r','c','e',0 };
    static const WCHAR CF_OBJECTDESCRIPTORW[] = { 'O','b','j','e','c','t',' ','D','e','s','c','r','i','p','t','o','r',0 };
    static const WCHAR CF_LINKSRCDESCRIPTORW[] = { 'L','i','n','k',' ','S','o','u','r','c','e',' ','D','e','s','c','r','i','p','t','o','r',0 };
    static const WCHAR CF_OWNERLINKW[] = { 'O','w','n','e','r','L','i','n','k',0 };
    static const WCHAR CF_FILENAMEW[] = { 'F','i','l','e','N','a','m','e',0 };
    static const WCHAR CF_FILENAMEWW[] = { 'F','i','l','e','N','a','m','e','W',0 };


    cf_object_descriptor = RegisterClipboardFormatW(CF_OBJECTDESCRIPTORW);
    cf_link_src_descriptor = RegisterClipboardFormatW(CF_LINKSRCDESCRIPTORW);
    cf_embed_source = RegisterClipboardFormatW(CF_EMBEDSOURCEW);
    cf_embedded_object = RegisterClipboardFormatW(CF_EMBEDDEDOBJECTW);
    cf_link_source = RegisterClipboardFormatW(CF_LINKSOURCEW);
    cf_ownerlink = RegisterClipboardFormatW(CF_OWNERLINKW);
    cf_filename = RegisterClipboardFormatW(CF_FILENAMEW);
    cf_filenamew = RegisterClipboardFormatW(CF_FILENAMEWW);
}
