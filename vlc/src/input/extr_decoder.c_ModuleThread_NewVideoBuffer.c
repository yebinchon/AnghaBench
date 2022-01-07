
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int out_pool; int p_vout; } ;
typedef int picture_t ;
typedef int decoder_t ;


 int assert (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int picture_Reset (int *) ;
 int * picture_pool_Wait (int ) ;

__attribute__((used)) static picture_t *ModuleThread_NewVideoBuffer( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );
    assert( p_owner->p_vout );

    picture_t *pic = picture_pool_Wait( p_owner->out_pool );
    if (pic)
        picture_Reset( pic );
    return pic;
}
