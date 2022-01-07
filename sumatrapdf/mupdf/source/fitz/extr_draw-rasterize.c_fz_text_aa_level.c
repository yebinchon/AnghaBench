
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_aa_text_bits ;

int
fz_text_aa_level(fz_context *ctx)
{
 return fz_aa_text_bits;
}
