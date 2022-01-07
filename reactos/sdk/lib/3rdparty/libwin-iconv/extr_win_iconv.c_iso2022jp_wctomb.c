
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ushort ;
typedef char uchar ;
struct TYPE_5__ {char* esc; int esc_len; int cs; int len; } ;
typedef TYPE_1__ iso2022_esc_t ;
struct TYPE_6__ {scalar_t__ mode; int codepage; } ;
typedef TYPE_2__ csconv_t ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ ConvertINetUnicodeToMultiByte (int *,int ,int const*,int*,char*,int*) ;
 int E2BIG ;
 int EILSEQ ;
 int ISO2022JP_CS_ASCII ;
 scalar_t__ ISO2022_MODE (int,int) ;
 int ISO2022_MODE_SHIFT (scalar_t__) ;
 int ISO2022_SI ;
 int ISO2022_SO ;
 int MB_CHAR_MAX ;
 scalar_t__ S_OK ;
 char* iso2022_SI_seq ;
 char* iso2022_SO_seq ;
 TYPE_1__* iso2022jp_esc ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int seterror (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
iso2022jp_wctomb(csconv_t *cv, ushort *wbuf, int wbufsize, uchar *buf, int bufsize)
{
    iso2022_esc_t *iesc = iso2022jp_esc;
    char tmp[MB_CHAR_MAX];
    int tmpsize = MB_CHAR_MAX;
    int insize = wbufsize;
    HRESULT hr;
    DWORD dummy = 0;
    int len;
    int esc_len;
    int cs;
    int shift;
    int i;







    hr = ConvertINetUnicodeToMultiByte(&dummy, cv->codepage,
            (const wchar_t *)wbuf, &wbufsize, tmp, &tmpsize);
    if (hr != S_OK || insize != wbufsize)
        return seterror(EILSEQ);
    else if (bufsize < tmpsize)
        return seterror(E2BIG);

    if (tmpsize == 1)
    {
        cs = ISO2022JP_CS_ASCII;
        esc_len = 0;
    }
    else
    {
        for (i = 1; iesc[i].esc != ((void*)0); ++i)
        {
            esc_len = iesc[i].esc_len;
            if (strncmp(tmp, iesc[i].esc, esc_len) == 0)
            {
                cs = iesc[i].cs;
                break;
            }
        }
        if (iesc[i].esc == ((void*)0))

            return seterror(EILSEQ);
    }

    shift = ISO2022_SI;
    if (tmp[esc_len] == iso2022_SO_seq[0])
    {
        shift = ISO2022_SO;
        esc_len += 1;
    }

    len = iesc[cs].len;



    if (cs == ISO2022JP_CS_ASCII && !(wbuf[0] < 0x80))
        return seterror(EILSEQ);
    else if (tmpsize < esc_len + len)
        return seterror(EILSEQ);

    if (cv->mode == ISO2022_MODE(cs, shift))
    {

        if (esc_len != 0)
            memmove(tmp, tmp + esc_len, len);
        esc_len = 0;
    }
    else
    {
        if (cs == ISO2022JP_CS_ASCII)
        {
            esc_len = iesc[ISO2022JP_CS_ASCII].esc_len;
            memmove(tmp + esc_len, tmp, len);
            memcpy(tmp, iesc[ISO2022JP_CS_ASCII].esc, esc_len);
        }
        if (ISO2022_MODE_SHIFT(cv->mode) == ISO2022_SO)
        {

            memmove(tmp + 1, tmp, len + esc_len);
            memcpy(tmp, iso2022_SI_seq, 1);
            esc_len += 1;
        }
    }

    if (bufsize < len + esc_len)
        return seterror(E2BIG);
    memcpy(buf, tmp, len + esc_len);
    cv->mode = ISO2022_MODE(cs, shift);
    return len + esc_len;
}
