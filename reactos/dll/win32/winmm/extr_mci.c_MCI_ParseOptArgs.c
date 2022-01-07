
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef char* LPWSTR ;
typedef int * LPDWORD ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*,...) ;
 scalar_t__ FALSE ;
 int MCIERR_BAD_INTEGER ;
 int MCIERR_PARSER_INTERNAL ;
 int MCIERR_UNRECOGNIZED_COMMAND ;


 int MCI_DATA_SIZE ;




 int MCI_GetDWord (int *,char**) ;
 int MCI_GetString (char**,char**) ;




 int TRACE (char*,int ,int) ;
 scalar_t__ TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (char*) ;
 int strlenW (scalar_t__) ;
 scalar_t__ strncmpiW (char*,scalar_t__,int) ;

__attribute__((used)) static DWORD MCI_ParseOptArgs(DWORD_PTR *data, int _offset, LPCWSTR lpCmd,
     LPWSTR args, LPDWORD dwFlags)
{
    int len, offset;
    const char* lmem;
    LPCWSTR str;
    DWORD dwRet, flg, cflg = 0;
    WORD eid;
    BOOL inCst, found;


    while (*args) {
 lmem = (const char*)lpCmd;
 found = inCst = FALSE;
 offset = _offset;


 while (*args == ' ') args++;
 TRACE("args=%s offset=%d\n", debugstr_w(args), offset);

 do {
     str = (LPCWSTR)lmem;
     lmem += ((len = strlenW(str)) + 1) * sizeof(WCHAR);
     flg = *(const DWORD*)lmem;
     eid = *(const WORD*)(lmem + sizeof(DWORD));
     lmem += sizeof(DWORD) + sizeof(WORD);


     switch (eid) {
     case 136:
  inCst = TRUE; cflg = flg; break;
     case 133:

  if (inCst && MCI_GetDWord(&(data[offset]), &args)) {
      *dwFlags |= cflg;
  }
  inCst = FALSE; cflg = 0;
  break;
     }

     if (strncmpiW(args, str, len) == 0 &&
                ((eid == 128 && len == 0) || args[len] == 0 || args[len] == ' ')) {

  args += len;
  while (*args == ' ') args++;
  found = TRUE;

  switch (eid) {
  case 137:
  case 129:
  case 135:
  case 134:
  case 136:
  case 133:
      break;
  case 132:
      *dwFlags |= flg;
      break;
  case 131:
      if (inCst) {
   data[offset] |= flg;
   *dwFlags |= cflg;
   inCst = FALSE;
      } else {
   *dwFlags |= flg;
   if (!MCI_GetDWord(&(data[offset]), &args)) {
       return MCIERR_BAD_INTEGER;
   }
      }
      break;
  case 130:

      *dwFlags |= flg;
      if (!MCI_GetDWord(&(data[offset+0]), &args) ||
   !MCI_GetDWord(&(data[offset+1]), &args) ||
   !MCI_GetDWord(&(data[offset+2]), &args) ||
   !MCI_GetDWord(&(data[offset+3]), &args)) {
   ERR("Bad rect %s\n", debugstr_w(args));
   return MCIERR_BAD_INTEGER;
      }
      break;
  case 128:
      *dwFlags |= flg;
      if ((dwRet = MCI_GetString((LPWSTR*)&data[offset], &args)))
   return dwRet;
      break;
  default: ERR("oops\n");
  }

  if (!inCst || eid != 136) eid = 135;
     } else {

  switch (eid) {
  case 137:
  case 129:
  case 135:
  case 134:
  case 136:
  case 132: break;
  case 131: if (!inCst) offset++; break;
  case 133:
  case 128: offset++; break;
  case 130: offset += 4; break;
  default: ERR("oops\n");
  }
     }
 } while (eid != 135);
 if (!found) {
     WARN("Optarg %s not found\n", debugstr_w(args));
     return MCIERR_UNRECOGNIZED_COMMAND;
 }
 if (offset == MCI_DATA_SIZE) {
     ERR("Internal data[] buffer overflow\n");
     return MCIERR_PARSER_INTERNAL;
 }
    }
    return 0;
}
