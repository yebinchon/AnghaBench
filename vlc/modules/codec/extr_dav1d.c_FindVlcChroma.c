
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_8__ {scalar_t__ i_chroma_id; scalar_t__ i_bitdepth; int i_chroma; } ;
struct TYPE_6__ {scalar_t__ layout; scalar_t__ bpc; } ;
struct TYPE_7__ {TYPE_1__ p; } ;
typedef TYPE_2__ Dav1dPicture ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 TYPE_3__* chroma_table ;

__attribute__((used)) static vlc_fourcc_t FindVlcChroma(const Dav1dPicture *img)
{
    for (unsigned int i = 0; i < ARRAY_SIZE(chroma_table); i++)
        if (chroma_table[i].i_chroma_id == img->p.layout &&
            chroma_table[i].i_bitdepth == img->p.bpc)
            return chroma_table[i].i_chroma;

    return 0;
}
