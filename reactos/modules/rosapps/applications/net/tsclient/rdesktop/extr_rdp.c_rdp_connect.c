
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint32 ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int True ;
 int rdp_send_logon_info (int *,int ,int *,int *,int *,int *,int *) ;
 int sec_connect (int *,char*,int *,char*) ;

BOOL
rdp_connect(RDPCLIENT * This, char *server, uint32 flags, wchar_t *username, wchar_t *domain, wchar_t *password,
     wchar_t *command, wchar_t *directory, wchar_t *hostname, char *cookie)
{
 if (!sec_connect(This, server, hostname, cookie))
  return False;

 rdp_send_logon_info(This, flags, domain, username, password, command, directory);
 return True;
}
