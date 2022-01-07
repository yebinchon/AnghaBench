
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ fz_stext_device ;
typedef int fz_matrix ;
typedef int fz_font ;
typedef int fz_context ;


 int FZ_STEXT_PRESERVE_LIGATURES ;
 int FZ_STEXT_PRESERVE_WHITESPACE ;
 int fz_add_stext_char_imp (int *,TYPE_1__*,int *,int,int,int ,float,int) ;

__attribute__((used)) static void
fz_add_stext_char(fz_context *ctx, fz_stext_device *dev, fz_font *font, int c, int glyph, fz_matrix trm, float adv, int wmode)
{

 if (c == -1)
  return;

 if (!(dev->flags & FZ_STEXT_PRESERVE_LIGATURES))
 {
  switch (c)
  {
  case 0xFB00:
   fz_add_stext_char_imp(ctx, dev, font, 'f', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'f', -1, trm, 0, wmode);
   return;
  case 0xFB01:
   fz_add_stext_char_imp(ctx, dev, font, 'f', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'i', -1, trm, 0, wmode);
   return;
  case 0xFB02:
   fz_add_stext_char_imp(ctx, dev, font, 'f', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'l', -1, trm, 0, wmode);
   return;
  case 0xFB03:
   fz_add_stext_char_imp(ctx, dev, font, 'f', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'f', -1, trm, 0, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'i', -1, trm, 0, wmode);
   return;
  case 0xFB04:
   fz_add_stext_char_imp(ctx, dev, font, 'f', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'f', -1, trm, 0, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 'l', -1, trm, 0, wmode);
   return;
  case 0xFB05:
  case 0xFB06:
   fz_add_stext_char_imp(ctx, dev, font, 's', glyph, trm, adv, wmode);
   fz_add_stext_char_imp(ctx, dev, font, 't', -1, trm, 0, wmode);
   return;
  }
 }

 if (!(dev->flags & FZ_STEXT_PRESERVE_WHITESPACE))
 {
  switch (c)
  {
  case 0x0009:
  case 0x0020:
  case 0x00A0:
  case 0x1680:
  case 0x180E:
  case 0x2000:
  case 0x2001:
  case 0x2002:
  case 0x2003:
  case 0x2004:
  case 0x2005:
  case 0x2006:
  case 0x2007:
  case 0x2008:
  case 0x2009:
  case 0x200A:
  case 0x202F:
  case 0x205F:
  case 0x3000:
   c = ' ';
  }
 }

 fz_add_stext_char_imp(ctx, dev, font, c, glyph, trm, adv, wmode);
}
