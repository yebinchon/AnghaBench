
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ fz_text_span ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef TYPE_2__ fz_text ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_trace_text_span (int *,int *,TYPE_1__*,int) ;

__attribute__((used)) static void
fz_trace_text(fz_context *ctx, fz_output *out, const fz_text *text, int depth)
{
 fz_text_span *span;
 for (span = text->head; span; span = span->next)
  fz_trace_text_span(ctx, out, span, depth);
}
