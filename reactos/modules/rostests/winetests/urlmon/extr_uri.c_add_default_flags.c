
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int Uri_CREATE_CANONICALIZE ;
 int Uri_CREATE_CRACK_UNKNOWN_SCHEMES ;
 int Uri_CREATE_DECODE_EXTRA_INFO ;
 int Uri_CREATE_IE_SETTINGS ;
 int Uri_CREATE_NO_CANONICALIZE ;
 int Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES ;
 int Uri_CREATE_NO_DECODE_EXTRA_INFO ;
 int Uri_CREATE_NO_IE_SETTINGS ;
 int Uri_CREATE_NO_PRE_PROCESS_HTML_URI ;
 int Uri_CREATE_PRE_PROCESS_HTML_URI ;

__attribute__((used)) static int add_default_flags(DWORD flags) {
    if(!(flags & Uri_CREATE_NO_CANONICALIZE))
        flags |= Uri_CREATE_CANONICALIZE;
    if(!(flags & Uri_CREATE_NO_DECODE_EXTRA_INFO))
        flags |= Uri_CREATE_DECODE_EXTRA_INFO;
    if(!(flags & Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES))
        flags |= Uri_CREATE_CRACK_UNKNOWN_SCHEMES;
    if(!(flags & Uri_CREATE_NO_PRE_PROCESS_HTML_URI))
        flags |= Uri_CREATE_PRE_PROCESS_HTML_URI;
    if(!(flags & Uri_CREATE_IE_SETTINGS))
        flags |= Uri_CREATE_NO_IE_SETTINGS;

    return flags;
}
