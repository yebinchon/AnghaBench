
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
typedef int uint32 ;
typedef int time_t ;
struct TYPE_7__ {int server_rdp_version; int rdp5_performanceflags; int use_rdp5; scalar_t__ encryption; } ;
typedef int * STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG_RDP5 (char*) ;
 int False ;
 int RDP_LOGON_AUTO ;
 int RDP_LOGON_BLOB ;
 int SEC_ENCRYPT ;
 int SEC_LOGON_INFO ;
 int gmtime (int*) ;
 int localtime (int*) ;
 int mktime (int ) ;
 int out_uint16_le (int *,int) ;
 int out_uint32 (int *,int ) ;
 int out_uint32_le (int *,int) ;
 int out_uint8s (int *,int) ;
 int rdp_out_unistr (TYPE_1__*,int *,char*,int) ;
 int s_mark_end (int *) ;
 int * sec_init (TYPE_1__*,int,int) ;
 int sec_send (TYPE_1__*,int *,int) ;
 char* tcp_get_address (TYPE_1__*) ;
 int time (int *) ;
 int wcslen (char*) ;

__attribute__((used)) static BOOL
rdp_send_logon_info(RDPCLIENT * This, uint32 flags, wchar_t *domain, wchar_t *user,
      wchar_t *password, wchar_t *program, wchar_t *directory)
{
 wchar_t *ipaddr = tcp_get_address(This);
 int len_domain = 2 * (int)wcslen(domain);
 int len_user = 2 * (int)wcslen(user);
 int len_password = 2 * (int)wcslen(password);
 int len_program = 2 * (int)wcslen(program);
 int len_directory = 2 * (int)wcslen(directory);
 int len_ip = 2 * (int)wcslen(ipaddr);
 int len_dll = 2 * (int)wcslen(L"C:\\WINNT\\System32\\mstscax.dll");
 int packetlen = 0;
 uint32 sec_flags = This->encryption ? (SEC_LOGON_INFO | SEC_ENCRYPT) : SEC_LOGON_INFO;
 STREAM s;
 time_t t = time(((void*)0));
 time_t tzone;

 if (!This->use_rdp5 || 1 == This->server_rdp_version)
 {
  DEBUG_RDP5(("Sending RDP4-style Logon packet\n"));

  s = sec_init(This, sec_flags, 18 + len_domain + len_user + len_password
        + len_program + len_directory + 10);

  if(s == ((void*)0))
   return False;

  out_uint32(s, 0);
  out_uint32_le(s, flags);
  out_uint16_le(s, len_domain);
  out_uint16_le(s, len_user);
  out_uint16_le(s, len_password);
  out_uint16_le(s, len_program);
  out_uint16_le(s, len_directory);
  rdp_out_unistr(This, s, domain, len_domain);
  rdp_out_unistr(This, s, user, len_user);
  rdp_out_unistr(This, s, password, len_password);
  rdp_out_unistr(This, s, program, len_program);
  rdp_out_unistr(This, s, directory, len_directory);
 }
 else
 {

  flags |= RDP_LOGON_BLOB;
  DEBUG_RDP5(("Sending RDP5-style Logon packet\n"));
  packetlen = 4 +
   4 +
   2 +
   2 +
   (flags & RDP_LOGON_AUTO ? 2 : 0) +
   (flags & RDP_LOGON_BLOB ? 2 : 0) +
   2 +
   2 +
   (0 < len_domain ? len_domain : 2) +
   len_user + (flags & RDP_LOGON_AUTO ? len_password : 0) + 0 +
   (flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO) ? 2 : 0) +
   (0 < len_program ? len_program : 2) + (0 < len_directory ? len_directory : 2) + 2 +
   2 +
   len_ip +
   2 +
   len_dll +
   2 +
   2 +
   64 +
   2 +
   64 +
   32;

  s = sec_init(This, sec_flags, packetlen);
  DEBUG_RDP5(("Called sec_init with packetlen %d\n", packetlen));

  if(s == ((void*)0))
   return False;

  out_uint32(s, 0);
  out_uint32_le(s, flags);
  out_uint16_le(s, len_domain);
  out_uint16_le(s, len_user);
  if (flags & RDP_LOGON_AUTO)
  {
   out_uint16_le(s, len_password);

  }
  if (flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO))
  {
   out_uint16_le(s, 0);
  }
  out_uint16_le(s, len_program);
  out_uint16_le(s, len_directory);
  if (0 < len_domain)
   rdp_out_unistr(This, s, domain, len_domain);
  else
   out_uint16_le(s, 0);
  rdp_out_unistr(This, s, user, len_user);
  if (flags & RDP_LOGON_AUTO)
  {
   rdp_out_unistr(This, s, password, len_password);
  }
  if (flags & RDP_LOGON_BLOB && !(flags & RDP_LOGON_AUTO))
  {
   out_uint16_le(s, 0);
  }
  if (0 < len_program)
  {
   rdp_out_unistr(This, s, program, len_program);

  }
  else
  {
   out_uint16_le(s, 0);
  }
  if (0 < len_directory)
  {
   rdp_out_unistr(This, s, directory, len_directory);
  }
  else
  {
   out_uint16_le(s, 0);
  }
  out_uint16_le(s, 2);
  out_uint16_le(s, len_ip + 2);
  rdp_out_unistr(This, s, ipaddr, len_ip);
  out_uint16_le(s, len_dll + 2);
  rdp_out_unistr(This, s, L"C:\\WINNT\\System32\\mstscax.dll", len_dll);

  tzone = (mktime(gmtime(&t)) - mktime(localtime(&t))) / 60;
  out_uint32_le(s, (uint32)tzone);

  rdp_out_unistr(This, s, L"GTB, normaltid", 2 * (int)wcslen(L"GTB, normaltid"));
  out_uint8s(s, 62 - 2 * wcslen(L"GTB, normaltid"));

  out_uint32_le(s, 0x0a0000);
  out_uint32_le(s, 0x050000);
  out_uint32_le(s, 3);
  out_uint32_le(s, 0);
  out_uint32_le(s, 0);

  rdp_out_unistr(This, s, L"GTB, sommartid", 2 * (int)wcslen(L"GTB, sommartid"));
  out_uint8s(s, 62 - 2 * wcslen(L"GTB, sommartid"));

  out_uint32_le(s, 0x30000);
  out_uint32_le(s, 0x050000);
  out_uint32_le(s, 2);
  out_uint32(s, 0);
  out_uint32_le(s, 0xffffffc4);
  out_uint32_le(s, 0xfffffffe);
  out_uint32_le(s, This->rdp5_performanceflags);
  out_uint32(s, 0);


 }
 s_mark_end(s);
 return sec_send(This, s, sec_flags);
}
