
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int table; int column; } ;
struct TYPE_7__ {TYPE_1__ unparsed; } ;
struct TYPE_8__ {TYPE_2__ column; } ;
struct expr {TYPE_3__ u; int type; } ;
struct TYPE_9__ {int table; int column; } ;
typedef TYPE_4__ column_info ;


 int EXPR_COLUMN ;
 struct expr* parser_alloc (void*,int) ;

__attribute__((used)) static struct expr * EXPR_column( void *info, const column_info *column )
{
    struct expr *e = parser_alloc( info, sizeof *e );
    if( e )
    {
        e->type = EXPR_COLUMN;
        e->u.column.unparsed.column = column->column;
        e->u.column.unparsed.table = column->table;
    }
    return e;
}
