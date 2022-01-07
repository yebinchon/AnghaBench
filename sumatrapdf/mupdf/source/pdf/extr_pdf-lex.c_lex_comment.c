
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;


 int EOF ;
 int lex_byte (int *,int *) ;

__attribute__((used)) static void
lex_comment(fz_context *ctx, fz_stream *f)
{
 int c;
 do {
  c = lex_byte(ctx, f);
 } while ((c != '\012') && (c != '\015') && (c != EOF));
}
