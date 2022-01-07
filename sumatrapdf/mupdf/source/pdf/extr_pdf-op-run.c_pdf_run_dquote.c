
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int gtop; int tos; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_processor ;
struct TYPE_5__ {float word_space; float char_space; int leading; } ;
struct TYPE_7__ {TYPE_1__ text; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int fz_context ;


 int pdf_show_string (int *,TYPE_2__*,unsigned char*,int) ;
 int pdf_tos_newline (int *,int ) ;

__attribute__((used)) static void pdf_run_dquote(fz_context *ctx, pdf_processor *proc, float aw, float ac, char *string, int string_len)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 gstate->text.word_space = aw;
 gstate->text.char_space = ac;
 pdf_tos_newline(&pr->tos, gstate->text.leading);
 pdf_show_string(ctx, pr, (unsigned char*)string, string_len);
}
