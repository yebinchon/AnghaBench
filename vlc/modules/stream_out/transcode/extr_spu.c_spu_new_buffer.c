
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int subpicture_updater_t ;
struct TYPE_4__ {int b_subtitle; } ;
typedef TYPE_1__ subpicture_t ;
typedef int decoder_t ;


 int VLC_UNUSED (int *) ;
 scalar_t__ likely (int ) ;
 TYPE_1__* subpicture_New (int const*) ;

__attribute__((used)) static subpicture_t *spu_new_buffer( decoder_t *p_dec,
                                     const subpicture_updater_t *p_upd )
{
    VLC_UNUSED( p_dec );
    subpicture_t *p_subpicture = subpicture_New( p_upd );
    if( likely(p_subpicture != ((void*)0)) )
        p_subpicture->b_subtitle = 1;
    return p_subpicture;
}
