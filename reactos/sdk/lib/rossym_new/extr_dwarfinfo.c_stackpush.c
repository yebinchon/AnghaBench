
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {int length; int max; int * data; int * storage; } ;
typedef TYPE_1__ DwarfStack ;


 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int *,int) ;
 int werrstr (char*,int,int ) ;

void stackpush(DwarfStack *stack, ulong value)
{
    if (stack->length == stack->max) {
        ulong *newstack = malloc(sizeof(ulong)*stack->max*2);
        memcpy(newstack, stack->data, sizeof(ulong)*stack->length);
        if (stack->data != stack->storage)
            free(stack->data);
        stack->data = newstack;
        stack->max *= 2;
    }
    werrstr("stack[%d] = %x", stack->length, value);
    stack->data[stack->length++] = value;
}
