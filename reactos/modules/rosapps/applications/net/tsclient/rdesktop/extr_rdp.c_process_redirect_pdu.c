
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint32 ;
struct TYPE_9__ {int redirect; } ;
struct TYPE_8__ {scalar_t__ p; } ;
typedef TYPE_1__* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int True ;
 int event_redirect (TYPE_2__*,int,int,int *,int,char*,int,int *,int,int *,int,int *) ;
 int in_uint32_le (TYPE_1__*,int) ;
 int in_uint8s (TYPE_1__*,int) ;

__attribute__((used)) static BOOL
process_redirect_pdu(RDPCLIENT * This, STREAM s )
{
 uint32 flags;

 uint32 server_len;
 wchar_t * server;

 uint32 cookie_len;
 char * cookie;

 uint32 username_len;
 wchar_t * username;

 uint32 domain_len;
 wchar_t * domain;

 uint32 password_len;
 wchar_t * password;


 in_uint8s(s, 2);


 in_uint32_le(s, flags);


 in_uint32_le(s, server_len);


 server = (wchar_t *)s->p;
 in_uint8s(s, server_len);


 in_uint32_le(s, cookie_len);


 cookie = (char *)s->p;
 in_uint8s(s, cookie_len);


 in_uint32_le(s, username_len);


 username = (wchar_t *)s->p;
 in_uint8s(s, username_len);


 in_uint32_le(s, domain_len);


 domain = (wchar_t *)s->p;
 in_uint8s(s, domain_len);


 in_uint32_le(s, password_len);


 password = (wchar_t *)s->p;
 in_uint8s(s, password_len);

 This->redirect = True;

 return event_redirect
 (
  This,
  flags,
  server_len,
  server,
  cookie_len,
  cookie,
  username_len,
  username,
  domain_len,
  domain,
  password_len,
  password
 );
}
