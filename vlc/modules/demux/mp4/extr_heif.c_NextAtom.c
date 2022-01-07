
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_7__ {scalar_t__ i_type; struct TYPE_7__* p_next; } ;
typedef TYPE_1__ MP4_Box_t ;


 TYPE_1__* MP4_BoxGet (TYPE_1__*,char const*) ;

__attribute__((used)) static MP4_Box_t * NextAtom( MP4_Box_t *p_root,
                             vlc_fourcc_t i_type, const char *psz_path,
                             MP4_Box_t *p_infe )
{
    if( p_infe == ((void*)0) )
        p_infe = MP4_BoxGet( p_root, psz_path );
    else
        p_infe = p_infe->p_next;
    for( ; p_infe; p_infe = p_infe->p_next )
    {
        if( p_infe->i_type == i_type )
            return p_infe;
    }
    return ((void*)0);
}
