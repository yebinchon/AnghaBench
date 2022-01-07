
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int id; } ;
struct TYPE_15__ {scalar_t__ cp; unsigned short* ctable; TYPE_1__ lc; } ;
typedef TYPE_2__ wchar_t ;
typedef int ver_info ;
typedef int _Locale_lcid_t ;
typedef TYPE_2__ _Locale_ctype_t ;
typedef scalar_t__ UINT ;
struct TYPE_17__ {int MaxCharSize; scalar_t__ LeadByte; } ;
struct TYPE_16__ {int dwOSVersionInfoSize; scalar_t__ dwPlatformId; } ;
typedef TYPE_4__ OSVERSIONINFO ;
typedef TYPE_5__ CPINFO ;


 int CT_CTYPE1 ;
 int FALSE ;
 int GetCPInfo (int,TYPE_5__*) ;
 int GetStringTypeA (int,int ,char const*,int,unsigned short*) ;
 int GetStringTypeW (int ,TYPE_2__*,int,unsigned short*) ;
 int GetVersionEx (TYPE_4__*) ;
 int INVARIANT_LCID ;
 int MAX_CP_LEN ;
 int MB_PRECOMPOSED ;
 unsigned short MapCtypeMask (unsigned short) ;
 int MapCtypeMasks (unsigned short*,unsigned short*) ;
 int MultiByteToWideChar (int,int ,char const*,int,TYPE_2__*,int) ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 int WC_COMPOSITECHECK ;
 int WC_SEPCHARS ;
 int WideCharToMultiByte (int,int,TYPE_2__*,int,char*,int,int *,int ) ;
 int _STLP_LOC_NO_MEMORY ;
 int _STLP_LOC_UNKNOWN_NAME ;
 int __GetDefaultCP (int) ;
 int __GetLCIDFromName (char const*,int*,char*,int *) ;
 scalar_t__ atoi (char*) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

_Locale_ctype_t* _Locale_ctype_create(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  char cp_name[MAX_CP_LEN + 1];
  int NativeCP;
  unsigned char Buffer[256];
  unsigned char *ptr;
  CPINFO CPInfo;
  int i;
  wchar_t *wbuffer;
  int BufferSize;

  _Locale_ctype_t *ltype = (_Locale_ctype_t*)malloc(sizeof(_Locale_ctype_t));

  if (!ltype) { *__err_code = _STLP_LOC_NO_MEMORY; return ltype; }
  memset(ltype, 0, sizeof(_Locale_ctype_t));

  if (__GetLCIDFromName(name, &ltype->lc.id, cp_name, lc_hint) == -1)
  { free(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }






  ltype->cp = atoi(cp_name);

  NativeCP = __GetDefaultCP(ltype->lc.id);


  for (i = 0; i < 256; ++i) Buffer[i] = (unsigned char)i;

  if (!GetCPInfo(NativeCP, &CPInfo)) { free(ltype); return ((void*)0); }

  if (CPInfo.MaxCharSize > 1) {
    for (ptr = (unsigned char*)CPInfo.LeadByte; *ptr && *(ptr + 1); ptr+=2)
      for (i = *ptr; i <= *(ptr + 1); ++i) Buffer[i] = 0;
  }

  if ((UINT)NativeCP != ltype->cp) {
    OSVERSIONINFO ver_info;
    ver_info.dwOSVersionInfoSize = sizeof(ver_info);
    GetVersionEx(&ver_info);
    if (ver_info.dwPlatformId == VER_PLATFORM_WIN32_NT) {

      BufferSize = MultiByteToWideChar(ltype->cp, MB_PRECOMPOSED, (const char*)Buffer, 256, ((void*)0), 0);
      if (!BufferSize) { free(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }
      wbuffer = (wchar_t*)malloc(BufferSize * sizeof(wchar_t));
      if (!wbuffer) { free(ltype); *__err_code = _STLP_LOC_NO_MEMORY; return ((void*)0); }
      MultiByteToWideChar(ltype->cp, MB_PRECOMPOSED, (const char*)Buffer, 256, wbuffer, BufferSize);

      GetStringTypeW(CT_CTYPE1, wbuffer, 256, ltype->ctable);
      MapCtypeMasks(ltype->ctable, ltype->ctable + 256);
      free(wbuffer);
    }
    else {
      unsigned short ctable[256];
      unsigned char TargetBuffer[256];
      GetStringTypeA(ltype->lc.id, CT_CTYPE1, (const char*)Buffer, 256, ctable);


      BufferSize = MultiByteToWideChar(NativeCP, MB_PRECOMPOSED, (const char*)Buffer, 256, ((void*)0), 0);
      if (!BufferSize) { free(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }
      wbuffer = (wchar_t*)malloc(BufferSize * sizeof(wchar_t));
      if (!wbuffer) { free(ltype); *__err_code = _STLP_LOC_NO_MEMORY; return ((void*)0); }
      MultiByteToWideChar(NativeCP, MB_PRECOMPOSED, (const char*)Buffer, 256, wbuffer, BufferSize);
      if (!WideCharToMultiByte(ltype->cp, WC_COMPOSITECHECK | WC_SEPCHARS, wbuffer, BufferSize, (char*)TargetBuffer, 256, ((void*)0), FALSE))
      { free(wbuffer); free(ltype); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }

      free(wbuffer);


      for (i = 0; i < 256; ++i) {
        if (!TargetBuffer[i]) continue;
        ltype->ctable[TargetBuffer[i]] = MapCtypeMask(ctable[i]);
      }
    }
  }
  else {
    GetStringTypeA(ltype->lc.id, CT_CTYPE1, (const char*)Buffer, 256, ltype->ctable);
    MapCtypeMasks(ltype->ctable, ltype->ctable + 256);
  }
  return ltype;
}
