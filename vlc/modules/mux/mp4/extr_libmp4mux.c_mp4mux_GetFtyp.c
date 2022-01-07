
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int i_size; int * p_elems; } ;
struct TYPE_14__ {TYPE_1__ extra; int i_minor; int i_major; } ;
struct TYPE_15__ {TYPE_2__ brands; } ;
typedef TYPE_3__ mp4mux_handle_t ;
struct TYPE_16__ {int b; } ;
typedef TYPE_4__ bo_t ;


 int bo_add_32be (TYPE_4__*,int ) ;
 int bo_add_fourcc (TYPE_4__*,int *) ;
 int bo_size (TYPE_4__*) ;
 int box_fix (TYPE_4__*,int ) ;
 TYPE_4__* box_new (char*) ;
 int free (TYPE_4__*) ;

bo_t *mp4mux_GetFtyp(const mp4mux_handle_t *h)
{
    bo_t *box = box_new("ftyp");
    if(box)
    {
        bo_add_fourcc(box, &h->brands.i_major);
        bo_add_32be (box, h->brands.i_minor);
        for(int i=0; i<h->brands.extra.i_size; i++)
            bo_add_fourcc(box, &h->brands.extra.p_elems[i]);
        if(!box->b)
        {
            free(box);
            return ((void*)0);
        }
        box_fix(box, bo_size(box));
    }
    return box;
}
