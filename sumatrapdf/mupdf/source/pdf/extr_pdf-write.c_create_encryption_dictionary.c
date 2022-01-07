
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int pdf_crypt ;
typedef int fz_context ;


 int AuthEvent ;
 int CF ;
 int CFM ;
 int Encrypt ;
 int EncryptMetadata ;
 int Filter ;
 int Length ;
 int O ;
 int OE ;
 int P ;
 int PDF_NAME (int ) ;
 int Perms ;
 int R ;
 int StdCF ;
 int StmF ;
 int StrF ;
 int U ;
 int UE ;
 int V ;
 int pdf_crypt_encrypt_metadata (int *,int *) ;
 int pdf_crypt_length (int *,int *) ;
 unsigned char* pdf_crypt_owner_encryption (int *,int *) ;
 unsigned char* pdf_crypt_owner_password (int *,int *) ;
 int pdf_crypt_permissions (int *,int *) ;
 scalar_t__ pdf_crypt_permissions_encryption (int *,int *) ;
 int pdf_crypt_revision (int *,int *) ;
 unsigned char* pdf_crypt_user_encryption (int *,int *) ;
 unsigned char* pdf_crypt_user_password (int *,int *) ;
 int pdf_crypt_version (int *,int *) ;
 int pdf_dict_put_bool (int *,int *,int ,int ) ;
 int * pdf_dict_put_dict (int *,int *,int ,int) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_dict_put_name (int *,int *,int ,char*) ;
 int pdf_dict_put_string (int *,int *,int ,char*,int) ;
 int * pdf_trailer (int *,int *) ;

__attribute__((used)) static void
create_encryption_dictionary(fz_context *ctx, pdf_document *doc, pdf_crypt *crypt)
{
 unsigned char *o, *u;
 pdf_obj *encrypt;
 int r;

 r = pdf_crypt_revision(ctx, crypt);

 encrypt = pdf_dict_put_dict(ctx, pdf_trailer(ctx, doc), PDF_NAME(Encrypt), 10);

 pdf_dict_put_name(ctx, encrypt, PDF_NAME(Filter), "Standard");
 pdf_dict_put_int(ctx, encrypt, PDF_NAME(R), r);
 pdf_dict_put_int(ctx, encrypt, PDF_NAME(V), pdf_crypt_version(ctx, crypt));
 pdf_dict_put_int(ctx, encrypt, PDF_NAME(Length), pdf_crypt_length(ctx, crypt));
 pdf_dict_put_int(ctx, encrypt, PDF_NAME(P), pdf_crypt_permissions(ctx, crypt));
 pdf_dict_put_bool(ctx, encrypt, PDF_NAME(EncryptMetadata), pdf_crypt_encrypt_metadata(ctx, crypt));

 o = pdf_crypt_owner_password(ctx, crypt);
 u = pdf_crypt_user_password(ctx, crypt);

 if (r < 4)
 {
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(O), (char *) o, 32);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(U), (char *) u, 32);
 }
 else if (r == 4)
 {
  pdf_obj *cf;

  pdf_dict_put_name(ctx, encrypt, PDF_NAME(StmF), "StdCF");
  pdf_dict_put_name(ctx, encrypt, PDF_NAME(StrF), "StdCF");

  cf = pdf_dict_put_dict(ctx, encrypt, PDF_NAME(CF), 1);
  cf = pdf_dict_put_dict(ctx, cf, PDF_NAME(StdCF), 3);
  pdf_dict_put_name(ctx, cf, PDF_NAME(AuthEvent), "DocOpen");
  pdf_dict_put_name(ctx, cf, PDF_NAME(CFM), "AESV2");
  pdf_dict_put_int(ctx, cf, PDF_NAME(Length), 16);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(O), (char *) o, 32);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(U), (char *) u, 32);
 }
 else if (r == 6)
 {
  unsigned char *oe = pdf_crypt_owner_encryption(ctx, crypt);
  unsigned char *ue = pdf_crypt_user_encryption(ctx, crypt);
  pdf_obj *cf;

  pdf_dict_put_name(ctx, encrypt, PDF_NAME(StmF), "StdCF");
  pdf_dict_put_name(ctx, encrypt, PDF_NAME(StrF), "StdCF");

  cf = pdf_dict_put_dict(ctx, encrypt, PDF_NAME(CF), 1);
  cf = pdf_dict_put_dict(ctx, cf, PDF_NAME(StdCF), 3);
  pdf_dict_put_name(ctx, cf, PDF_NAME(AuthEvent), "DocOpen");
  pdf_dict_put_name(ctx, cf, PDF_NAME(CFM), "AESV3");
  pdf_dict_put_int(ctx, cf, PDF_NAME(Length), 32);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(O), (char *) o, 48);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(U), (char *) u, 48);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(OE), (char *) oe, 32);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(UE), (char *) ue, 32);
  pdf_dict_put_string(ctx, encrypt, PDF_NAME(Perms), (char *) pdf_crypt_permissions_encryption(ctx, crypt), 16);
 }
}
