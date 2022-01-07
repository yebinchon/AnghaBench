
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_thread_t ;
typedef int input_item_t ;
struct TYPE_2__ {int * p_item; } ;


 int assert (int ) ;
 TYPE_1__* input_priv (int *) ;

input_item_t *input_GetItem( input_thread_t *p_input )
{
    assert( p_input != ((void*)0) );
    return input_priv(p_input)->p_item;
}
