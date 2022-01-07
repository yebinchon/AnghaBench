
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_infe; } ;
struct heif_private_t {int i_pcr; int i_image_duration; scalar_t__ i_end_display_time; TYPE_1__ current; int p_root; } ;
struct TYPE_4__ {int i_flags; } ;
typedef int MP4_Box_t ;


 int ATOM_infe ;
 TYPE_2__* BOXDATA (int *) ;
 int MatchPureImage (int *,int ) ;
 int * NextAtom (int ,int ,char*,int *) ;

__attribute__((used)) static void SeekToPrevImageEnd( struct heif_private_t *p_sys, int i_picture )
{
    int i = 0;
    MP4_Box_t *p_infe = ((void*)0);
    while( i < i_picture &&
          (p_infe = NextAtom( p_sys->p_root, ATOM_infe, "meta/iinf/infe", p_infe )) )
    {
        if( (BOXDATA(p_infe)->i_flags & 0x01) != 0x00 ||
                !MatchPureImage( p_infe, p_sys->p_root ) )
            continue;
        i++;
    }
    p_sys->current.p_infe = p_infe;
    p_sys->i_end_display_time = 0;
    p_sys->i_pcr = i * p_sys->i_image_duration;
}
