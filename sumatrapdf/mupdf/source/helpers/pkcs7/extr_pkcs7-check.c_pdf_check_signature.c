
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int fz_strlcpy (char*,char*,int) ;

int pdf_check_signature(fz_context *ctx, pdf_document *doc, pdf_obj *signature, char *ebuf, int ebufsize)
{
 fz_strlcpy(ebuf, "No digital signing support in this build", ebufsize);
 return 0;
}
