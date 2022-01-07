
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int codepage; int * compat; int * mblen; void* wctomb; void* mbtowc; int * flush; scalar_t__ mode; } ;
typedef TYPE_1__ csconv_t ;
struct TYPE_6__ {int MaxCharSize; } ;
typedef TYPE_2__ CPINFO ;


 int EINVAL ;
 int FALSE ;
 int FLAG_IGNORE ;
 int FLAG_TRANSLIT ;
 int FLAG_USE_BOM ;
 scalar_t__ GetCPInfo (int,TYPE_2__*) ;
 scalar_t__ IsValidCodePage (int) ;
 int TRUE ;
 scalar_t__ _stricmp (char*,char*) ;
 int * cp20932_compat ;
 int * cp5022x_compat ;
 int * cp51932_compat ;
 int * cp932_compat ;
 int * dbcs_mblen ;
 int errno ;
 int * eucjp_mblen ;
 int free (char*) ;
 int * iso2022jp_flush ;
 void* iso2022jp_mbtowc ;
 void* iso2022jp_wctomb ;
 void* kernel_mbtowc ;
 void* kernel_wctomb ;
 scalar_t__ load_mlang () ;
 int * mbcs_mblen ;
 void* mlang_mbtowc ;
 void* mlang_wctomb ;
 int name_to_codepage (char*) ;
 int * sbcs_mblen ;
 int strlen (char const*) ;
 char* strrstr (char*,char*) ;
 void* utf16_mbtowc ;
 void* utf16_wctomb ;
 void* utf32_mbtowc ;
 void* utf32_wctomb ;
 int * utf8_mblen ;
 char* xstrndup (char const*,int ) ;

__attribute__((used)) static int
make_csconv(const char *_name, csconv_t *cv)
{
    CPINFO cpinfo;
    int use_compat = TRUE;
    int flag = 0;
    char *name;
    char *p;

    name = xstrndup(_name, strlen(_name));
    if (name == ((void*)0))
        return FALSE;


    while ((p = strrstr(name, "//")) != ((void*)0))
    {
        if (_stricmp(p + 2, "nocompat") == 0)
            use_compat = FALSE;
        else if (_stricmp(p + 2, "translit") == 0)
            flag |= FLAG_TRANSLIT;
        else if (_stricmp(p + 2, "ignore") == 0)
            flag |= FLAG_IGNORE;
        *p = 0;
    }

    cv->mode = 0;
    cv->flags = flag;
    cv->mblen = ((void*)0);
    cv->flush = ((void*)0);
    cv->compat = ((void*)0);
    cv->codepage = name_to_codepage(name);
    if (cv->codepage == 1200 || cv->codepage == 1201)
    {
        cv->mbtowc = utf16_mbtowc;
        cv->wctomb = utf16_wctomb;
        if (_stricmp(name, "UTF-16") == 0 || _stricmp(name, "UTF16") == 0 ||
          _stricmp(name, "UCS-2") == 0 || _stricmp(name, "UCS2") == 0)
            cv->flags |= FLAG_USE_BOM;
    }
    else if (cv->codepage == 12000 || cv->codepage == 12001)
    {
        cv->mbtowc = utf32_mbtowc;
        cv->wctomb = utf32_wctomb;
        if (_stricmp(name, "UTF-32") == 0 || _stricmp(name, "UTF32") == 0 ||
          _stricmp(name, "UCS-4") == 0 || _stricmp(name, "UCS4") == 0)
            cv->flags |= FLAG_USE_BOM;
    }
    else if (cv->codepage == 65001)
    {
        cv->mbtowc = kernel_mbtowc;
        cv->wctomb = kernel_wctomb;
        cv->mblen = utf8_mblen;
    }
    else if ((cv->codepage == 50220 || cv->codepage == 50221 || cv->codepage == 50222) && load_mlang())
    {
        cv->mbtowc = iso2022jp_mbtowc;
        cv->wctomb = iso2022jp_wctomb;
        cv->flush = iso2022jp_flush;
    }
    else if (cv->codepage == 51932 && load_mlang())
    {
        cv->mbtowc = mlang_mbtowc;
        cv->wctomb = mlang_wctomb;
        cv->mblen = eucjp_mblen;
    }
    else if (IsValidCodePage(cv->codepage)
      && GetCPInfo(cv->codepage, &cpinfo) != 0)
    {
        cv->mbtowc = kernel_mbtowc;
        cv->wctomb = kernel_wctomb;
        if (cpinfo.MaxCharSize == 1)
            cv->mblen = sbcs_mblen;
        else if (cpinfo.MaxCharSize == 2)
            cv->mblen = dbcs_mblen;
        else
     cv->mblen = mbcs_mblen;
    }
    else
    {

        free(name);
        errno = EINVAL;
        return FALSE;
    }

    if (use_compat)
    {
        switch (cv->codepage)
        {
        case 932: cv->compat = cp932_compat; break;
        case 20932: cv->compat = cp20932_compat; break;
        case 51932: cv->compat = cp51932_compat; break;
        case 50220: case 50221: case 50222: cv->compat = cp5022x_compat; break;
        }
    }

    free(name);

    return TRUE;
}
