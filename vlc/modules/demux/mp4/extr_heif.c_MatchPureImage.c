
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_from_item_id; scalar_t__ i_item_id; } ;
struct TYPE_7__ {struct TYPE_7__* p_next; struct TYPE_7__* p_first; } ;
typedef TYPE_1__ MP4_Box_t ;


 TYPE_5__* BOXDATA (TYPE_1__ const*) ;
 TYPE_1__* MP4_BoxGet (TYPE_1__*,char*) ;

__attribute__((used)) static bool MatchPureImage( const MP4_Box_t *p_infe, void *priv )
{
    MP4_Box_t *p_root = priv;
    const MP4_Box_t *p_iref = MP4_BoxGet( p_root, "meta/iref" );
    if( !p_iref )
        return 1;
    for( const MP4_Box_t *p_refbox = p_iref->p_first;
                          p_refbox; p_refbox = p_refbox->p_next )
    {
        if( BOXDATA(p_refbox)->i_from_item_id == BOXDATA(p_infe)->i_item_id )
            return 0;
    }
    return 1;
}
