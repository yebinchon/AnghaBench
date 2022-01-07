
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
typedef size_t UINT ;
struct TYPE_3__ {char* lfn; char* fn; } ;
typedef char TCHAR ;
typedef int FRESULT ;
typedef TYPE_1__ DIR ;
typedef char BYTE ;


 char DDEM ;
 char* ExCvt ;
 int FR_INVALID_NAME ;
 int FR_OK ;
 scalar_t__ IsDBCS1 (char) ;
 int IsDBCS2 (char) ;
 scalar_t__ IsLower (char) ;
 scalar_t__ IsUpper (char) ;
 size_t NSFLAG ;
 char NS_BODY ;
 char NS_DOT ;
 char NS_EXT ;
 char NS_LAST ;
 char NS_LFN ;
 char NS_LOSS ;
 void* RDDEM ;
 scalar_t__ _DF1S ;
 size_t _MAX_LFN ;
 scalar_t__ chk_chr (char*,char) ;
 char ff_convert (char,int) ;
 char ff_wtoupper (char) ;
 int mem_set (char*,char,int) ;

__attribute__((used)) static
FRESULT create_name (
 DIR* dp,
 const TCHAR** path
)
{
 BYTE b, c, d, *sfn;
 UINT ni, si, i;
 const char *p;


 for (p = *path; *p == '/' || *p == '\\'; p++) ;
 sfn = dp->fn;
 mem_set(sfn, ' ', 11);
 si = i = b = 0; ni = 8;
 for (;;) {
  c = (BYTE)p[si++];
  if (c <= ' ' || c == '/' || c == '\\') break;
  if (c == '.' || i >= ni) {
   if (ni != 8 || c != '.') return FR_INVALID_NAME;
   i = 8; ni = 11;
   b <<= 2; continue;
  }
  if (c >= 0x80) {
   b |= 3;




   return FR_INVALID_NAME;


  }
  if (IsDBCS1(c)) {
   d = (BYTE)p[si++];
   if (!IsDBCS2(d) || i >= ni - 1)
    return FR_INVALID_NAME;
   sfn[i++] = c;
   sfn[i++] = d;
  } else {
   if (chk_chr("\"*+,:;<=>\?[]|\x7F", c))
    return FR_INVALID_NAME;
   if (IsUpper(c)) {
    b |= 2;
   } else {
    if (IsLower(c)) {
     b |= 1; c -= 0x20;
    }
   }
   sfn[i++] = c;
  }
 }
 *path = &p[si];
 c = (c <= ' ') ? NS_LAST : 0;

 if (!i) return FR_INVALID_NAME;
 if (sfn[0] == DDEM) sfn[0] = RDDEM;

 if (ni == 8) b <<= 2;
 if ((b & 0x03) == 0x01) c |= NS_EXT;
 if ((b & 0x0C) == 0x04) c |= NS_BODY;

 sfn[NSFLAG] = c;

 return FR_OK;

}
