
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_access; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_7__ {scalar_t__ b; } ;
typedef TYPE_2__ bo_t ;


 int assert (int ) ;
 int free (TYPE_2__*) ;
 int sout_AccessOutWrite (int ,scalar_t__) ;

__attribute__((used)) static void box_send(sout_mux_t *p_mux, bo_t *box)
{
    assert(box != ((void*)0));
    if (box->b)
        sout_AccessOutWrite(p_mux->p_access, box->b);
    free(box);
}
