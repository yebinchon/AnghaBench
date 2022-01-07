
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int fz_free (int *,char*) ;
 int fz_snprintf (char*,int,char*,int ) ;
 int fz_strlcpy (char*,char*,int) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 char* pdf_sprint_obj (int *,char*,int,int*,int *,int,int ) ;
 int pdf_to_num (int *,int *) ;

__attribute__((used)) static void
pdf_format_key(fz_context *ctx, char *s, int n, void *key_)
{
 pdf_obj *key = (pdf_obj *)key_;
 if (pdf_is_indirect(ctx, key))
  fz_snprintf(s, n, "(%d 0 R)", pdf_to_num(ctx, key));
 else
 {
  int t;
  char *p = pdf_sprint_obj(ctx, s, n, &t, key, 1, 0);
  if (p != s) {
   fz_strlcpy(s, p, n);
   fz_free(ctx, p);
  }
 }
}
