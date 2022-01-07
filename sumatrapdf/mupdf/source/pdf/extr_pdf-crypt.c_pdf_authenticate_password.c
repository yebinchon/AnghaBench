
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* crypt; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;
struct TYPE_6__ {int r; } ;


 scalar_t__ pdf_authenticate_owner_password (int *,TYPE_2__*,unsigned char*,int ) ;
 scalar_t__ pdf_authenticate_user_password (int *,TYPE_2__*,unsigned char*,int ) ;
 int pdf_docenc_from_utf8 (char*,char const*,int) ;
 int pdf_saslprep_from_utf8 (char*,char const*,int) ;
 int strlen (char*) ;

int
pdf_authenticate_password(fz_context *ctx, pdf_document *doc, const char *pwd_utf8)
{
 char password[2048];
 int auth;

 if (!doc->crypt)
  return 1;

 password[0] = 0;
 if (pwd_utf8)
 {
  if (doc->crypt->r <= 4)
   pdf_docenc_from_utf8(password, pwd_utf8, sizeof password);
  else
   pdf_saslprep_from_utf8(password, pwd_utf8, sizeof password);
 }

 auth = 0;
 if (pdf_authenticate_user_password(ctx, doc->crypt, (unsigned char *)password, strlen(password)))
  auth = 2;
 if (pdf_authenticate_owner_password(ctx, doc->crypt, (unsigned char *)password, strlen(password)))
  auth |= 4;
 else if (auth & 2)
 {




  (void)pdf_authenticate_user_password(ctx, doc->crypt, (unsigned char *)password, strlen(password));
 }



 if (*password == 0 && auth == 4)
  return 0;

 return auth;
}
