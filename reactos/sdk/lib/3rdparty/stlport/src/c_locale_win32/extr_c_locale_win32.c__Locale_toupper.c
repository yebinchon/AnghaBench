
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {scalar_t__ cp; TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_ctype_t ;
typedef scalar_t__ UINT ;


 int FALSE ;
 int LCMAP_LINGUISTIC_CASING ;
 int LCMAP_UPPERCASE ;
 int LCMapStringA (int ,int,char*,int,char*,int) ;
 int MB_PRECOMPOSED ;
 int MultiByteToWideChar (scalar_t__,int ,char*,int,int *,int) ;
 int WC_COMPOSITECHECK ;
 int WC_SEPCHARS ;
 int WideCharToMultiByte (scalar_t__,int,int *,int,char*,int,int *,int ) ;
 scalar_t__ __GetDefaultCP (int ) ;

int _Locale_toupper(_Locale_ctype_t* ltype, int c) {
  char buf[2], out_buf[2];
  buf[0] = (char)c; buf[1] = 0;
  if ((UINT)__GetDefaultCP(ltype->lc.id) == ltype->cp) {
    LCMapStringA(ltype->lc.id, LCMAP_LINGUISTIC_CASING | LCMAP_UPPERCASE, buf, 2, out_buf, 2);
    return out_buf[0];
  }
  else {
    wchar_t wbuf[2];
    MultiByteToWideChar(ltype->cp, MB_PRECOMPOSED, buf, 2, wbuf, 2);
    WideCharToMultiByte(__GetDefaultCP(ltype->lc.id), WC_COMPOSITECHECK | WC_SEPCHARS, wbuf, 2, buf, 2, ((void*)0), FALSE);

    LCMapStringA(ltype->lc.id, LCMAP_LINGUISTIC_CASING | LCMAP_UPPERCASE, buf, 2, out_buf, 2);

    MultiByteToWideChar(__GetDefaultCP(ltype->lc.id), MB_PRECOMPOSED, out_buf, 2, wbuf, 2);
    WideCharToMultiByte(ltype->cp, WC_COMPOSITECHECK | WC_SEPCHARS, wbuf, 2, out_buf, 2, ((void*)0), FALSE);
    return out_buf[0];
  }
}
