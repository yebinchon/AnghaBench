
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_crypt ;
typedef int fz_context ;


 int fwrite (char*,int,int,int ) ;
 int fz_free (int *,char*) ;
 char* pdf_sprint_encrypted_obj (int *,char*,int,int*,int *,int,int,int *,int,int) ;
 int stdout ;

__attribute__((used)) static void pdf_debug_encrypted_obj(fz_context *ctx, pdf_obj *obj, int tight, pdf_crypt *crypt, int num, int gen)
{
 char buf[1024];
 char *ptr;
 int n;
 int ascii = 1;

 ptr = pdf_sprint_encrypted_obj(ctx, buf, sizeof buf, &n, obj, tight, ascii, crypt, num, gen);
 fwrite(ptr, 1, n, stdout);
 if (ptr != buf)
  fz_free(ctx, ptr);
}
