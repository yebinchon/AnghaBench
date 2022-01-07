
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_stext_line ;
struct TYPE_3__ {int c; } ;
typedef TYPE_1__ fz_stext_char ;
typedef int fz_context ;
typedef int fz_buffer ;


 int FZ_REPLACEMENT_CHARACTER ;
 int fz_append_rune (int *,int *,int) ;

__attribute__((used)) static void on_copy_char(fz_context *ctx, void *arg, fz_stext_line *line, fz_stext_char *ch)
{
 fz_buffer *buffer = arg;
 int c = ch->c;
 if (c < 32)
  c = FZ_REPLACEMENT_CHARACTER;
 fz_append_rune(ctx, buffer, c);
}
