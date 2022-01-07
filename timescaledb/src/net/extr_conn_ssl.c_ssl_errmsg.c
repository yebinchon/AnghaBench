
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int errbuf ;
struct TYPE_6__ {int err; } ;
struct TYPE_5__ {unsigned long errcode; int * ssl; } ;
typedef TYPE_1__ SSLConnection ;
typedef TYPE_2__ Connection ;


 char* ERR_reason_error_string (unsigned long) ;
 scalar_t__ IS_SOCKET_ERROR (int) ;
 int SSL_get_error (int *,int) ;
 int snprintf (char*,int,char*,unsigned long) ;
 char const* ts_plain_errmsg (TYPE_2__*) ;

__attribute__((used)) static const char *
ssl_errmsg(Connection *conn)
{
 SSLConnection *sslconn = (SSLConnection *) conn;
 const char *reason;
 static char errbuf[32];
 int err = conn->err;
 unsigned long ecode = sslconn->errcode;


 conn->err = 0;
 sslconn->errcode = 0;

 if (((void*)0) != sslconn->ssl)
 {
  int sslerr = SSL_get_error(sslconn->ssl, err);

  switch (sslerr)
  {
   case 136:
   case 135:

    break;
   case 128:
    return "SSL error zero return";
   case 131:
    return "SSL error want read";
   case 130:
    return "SSL error want write";
   case 132:
    return "SSL error want connect";
   case 133:
    return "SSL error want accept";
   case 129:
    return "SSL error want X509 lookup";
   case 134:
    if (ecode == 0)
    {
     if (err == 0)
      return "EOF in SSL operation";
     else if (IS_SOCKET_ERROR(err))
     {

      conn->err = err;
      return ts_plain_errmsg(conn);
     }
     else
      return "unknown SSL syscall error";
    }
    return "SSL error syscall";
   default:
    break;
  }
 }

 if (ecode == 0)
 {

  if (IS_SOCKET_ERROR(err))
  {

   conn->err = err;
   return ts_plain_errmsg(conn);
  }

  return "no SSL error";
 }

 reason = ERR_reason_error_string(ecode);

 if (((void*)0) != reason)
  return reason;

 snprintf(errbuf, sizeof(errbuf), "SSL error code %lu", ecode);

 return errbuf;
}
