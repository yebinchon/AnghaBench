
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int attrs; } ;
typedef TYPE_1__ var_t ;


 unsigned int ROUND_SIZE (unsigned int,int) ;
 int TDT_ALL_TYPES ;






 int pointer_size ;
 unsigned int type_memsize (int ) ;
 int typegen_detect_type (int ,int ,int ) ;

__attribute__((used)) static unsigned int get_stack_size( const var_t *var, int *by_value )
{
    unsigned int stack_size;
    int by_val;

    switch (typegen_detect_type( var->type, var->attrs, TDT_ALL_TYPES ))
    {
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
        stack_size = type_memsize( var->type );
        by_val = (pointer_size < 8 || stack_size <= pointer_size);
        break;
    default:
        by_val = 0;
        break;
    }
    if (!by_val) stack_size = pointer_size;
    if (by_value) *by_value = by_val;
    return ROUND_SIZE( stack_size, pointer_size );
}
