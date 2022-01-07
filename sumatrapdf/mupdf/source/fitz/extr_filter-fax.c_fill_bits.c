
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bidx; int word; int chain; } ;
typedef TYPE_1__ fz_faxd ;
typedef int fz_context ;


 int EOF ;
 int fz_read_byte (int *,int ) ;

__attribute__((used)) static int
fill_bits(fz_context *ctx, fz_faxd *fax)
{



 while (fax->bidx > (32-13))
 {
  int c = fz_read_byte(ctx, fax->chain);
  if (c == EOF)
   return EOF;
  fax->bidx -= 8;
  fax->word |= c << fax->bidx;
 }
 return 0;
}
