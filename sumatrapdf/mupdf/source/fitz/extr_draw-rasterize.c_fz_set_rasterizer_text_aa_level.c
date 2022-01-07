
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int text_bits; } ;
typedef TYPE_1__ fz_aa_context ;


 int fz_aa_bits ;
 int fz_warn (int *,char*,...) ;

void
fz_set_rasterizer_text_aa_level(fz_context *ctx, fz_aa_context *aa, int level)
{
 if (level > 8)
  aa->text_bits = 0;
 else if (level > 6)
  aa->text_bits = 8;
 else if (level > 4)
  aa->text_bits = 6;
 else if (level > 2)
  aa->text_bits = 4;
 else if (level > 0)
  aa->text_bits = 2;
 else
  aa->text_bits = 0;

}
