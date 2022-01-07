
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int ERROR_SUCCESS ;


 scalar_t__ FACILITY_STORAGE ;
 int IS_ERROR (int ) ;
 int MSG_050 ;
 int MSG_051 ;
 int MSG_052 ;
 int MSG_053 ;
 int MSG_054 ;
 int MSG_055 ;
 int MSG_056 ;
 int MSG_057 ;
 int MSG_058 ;
 int MSG_059 ;
 int MSG_060 ;
 int MSG_061 ;
 int MSG_062 ;
 int MSG_063 ;
 int MSG_064 ;
 int MSG_065 ;
 int MSG_066 ;
 int MSG_067 ;
 int MSG_068 ;
 int MSG_069 ;
 int MSG_070 ;
 int MSG_071 ;
 int MSG_072 ;
 int MSG_073 ;
 int MSG_074 ;
 int MSG_075 ;
 int MSG_076 ;
 int MSG_077 ;
 int MSG_078 ;
 int MSG_079 ;
 int MSG_172 ;
 int SCODE_CODE (int ) ;
 scalar_t__ SCODE_FACILITY (int ) ;
 int SetLastError (int ) ;
 char const* WindowsErrorString () ;
 char const* lmprintf (int ) ;

const char* _StrError(DWORD error_code)
{
 if ( (!IS_ERROR(error_code)) || (SCODE_CODE(error_code) == ERROR_SUCCESS)) {
  return lmprintf(MSG_050);
 }
 if (SCODE_FACILITY(error_code) != FACILITY_STORAGE) {
  SetLastError(error_code);
  return WindowsErrorString();
 }
 switch (SCODE_CODE(error_code)) {
 case 145:
  return lmprintf(MSG_051);
 case 144:
  return lmprintf(MSG_052);
 case 157:
  return lmprintf(MSG_053);
 case 128:
  return lmprintf(MSG_054);
 case 146:
  return lmprintf(MSG_055);
 case 149:
  return lmprintf(MSG_056);
 case 137:
  return lmprintf(MSG_057);
 case 141:
  return lmprintf(MSG_058);
 case 142:
  return lmprintf(MSG_059);
 case 140:
  return lmprintf(MSG_060);
 case 133:
  return lmprintf(MSG_061);
 case 134:
  return lmprintf(MSG_062);
 case 136:
  return lmprintf(MSG_063);
 case 130:
  return lmprintf(MSG_064);
 case 129:
  return lmprintf(MSG_065);
 case 143:
  return lmprintf(MSG_066);
 case 132:
  return lmprintf(MSG_067);
 case 131:
  return lmprintf(MSG_068);
 case 153:
  return lmprintf(MSG_069);
 case 154:
  return lmprintf(MSG_070);
 case 147:
  return lmprintf(MSG_071);
 case 156:
  return lmprintf(MSG_072);
 case 138:
  return lmprintf(MSG_073);
 case 139:
  return lmprintf(MSG_074);
 case 148:
  return lmprintf(MSG_075);
 case 150:
  return lmprintf(MSG_076);
 case 152:
  return lmprintf(MSG_077);
 case 151:
  return lmprintf(MSG_078);
 case 135:
  return lmprintf(MSG_079);
 case 155:
  return lmprintf(MSG_172);
 default:
  SetLastError(error_code);
  return WindowsErrorString();
 }
}
