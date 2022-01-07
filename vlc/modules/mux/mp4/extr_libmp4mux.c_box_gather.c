
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* b; } ;
typedef TYPE_1__ bo_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int * p_buffer; } ;


 TYPE_2__* block_Realloc (TYPE_2__*,int ,scalar_t__) ;
 int bo_free (TYPE_1__*) ;
 size_t bo_size (TYPE_1__*) ;
 int box_fix (TYPE_1__*,size_t) ;
 scalar_t__ likely (TYPE_2__*) ;
 int memcpy (int *,int *,scalar_t__) ;

void box_gather (bo_t *box, bo_t *box2)
{
    if(box2 && box2->b && box && box->b)
    {
        box_fix(box2, bo_size( box2 ));
        size_t i_offset = bo_size( box );
        box->b = block_Realloc(box->b, 0, box->b->i_buffer + box2->b->i_buffer);
        if(likely(box->b))
            memcpy(&box->b->p_buffer[i_offset], box2->b->p_buffer, box2->b->i_buffer);
    }
    bo_free(box2);
}
