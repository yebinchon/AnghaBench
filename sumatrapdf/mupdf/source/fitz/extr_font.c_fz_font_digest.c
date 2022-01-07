
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_digest; int digest; int buffer; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_md5_buffer (int *,int ,int ) ;
 int fz_throw (int *,int ,char*) ;
 int memcpy (unsigned char*,int ,int) ;

void fz_font_digest(fz_context *ctx, fz_font *font, unsigned char digest[16])
{
 if (!font->buffer)
  fz_throw(ctx, FZ_ERROR_GENERIC, "no font file for digest");
 if (!font->has_digest)
 {
  fz_md5_buffer(ctx, font->buffer, font->digest);
  font->has_digest = 1;
 }
 memcpy(digest, font->digest, 16);
}
