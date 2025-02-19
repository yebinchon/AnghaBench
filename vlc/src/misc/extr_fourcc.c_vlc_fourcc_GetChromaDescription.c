
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
typedef int vlc_chroma_description_t ;
struct TYPE_2__ {scalar_t__* p_fourcc; int const description; } ;


 TYPE_1__* p_list_chroma_description ;

const vlc_chroma_description_t *vlc_fourcc_GetChromaDescription( vlc_fourcc_t i_fourcc )
{
    for( unsigned i = 0; p_list_chroma_description[i].p_fourcc[0]; i++ )
    {
        const vlc_fourcc_t *p_fourcc = p_list_chroma_description[i].p_fourcc;
        for( unsigned j = 0; j < 4 && p_fourcc[j] != 0; j++ )
        {
            if( p_fourcc[j] == i_fourcc )
                return &p_list_chroma_description[i].description;
        }
    }
    return ((void*)0);
}
