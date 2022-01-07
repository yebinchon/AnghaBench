
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_stat_context {size_t cells; int type; TYPE_1__* cell; int text; int cell_text; scalar_t__ skip; } ;
struct TYPE_2__ {size_t length; int type; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int argv_appendn (int *,int ,size_t) ;
 int assert (int) ;

__attribute__((used)) static bool
diff_common_add_cell(struct diff_stat_context *context, size_t length, bool allow_empty)
{
 assert(ARRAY_SIZE(context->cell) > context->cells);
 if (!allow_empty && (length == 0))
  return 1;
 if (context->skip && !argv_appendn(&context->cell_text, context->text, length))
  return 0;
 context->cell[context->cells].length = length;
 context->cell[context->cells].type = context->type;
 context->cells++;
 return 1;
}
