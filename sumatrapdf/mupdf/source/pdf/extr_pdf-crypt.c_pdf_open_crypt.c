
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stmf; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_stream ;
typedef int fz_context ;


 int * pdf_open_crypt_imp (int *,int *,TYPE_1__*,int *,int,int) ;

fz_stream *
pdf_open_crypt(fz_context *ctx, fz_stream *chain, pdf_crypt *crypt, int num, int gen)
{
 return pdf_open_crypt_imp(ctx, chain, crypt, &crypt->stmf, num, gen);
}
