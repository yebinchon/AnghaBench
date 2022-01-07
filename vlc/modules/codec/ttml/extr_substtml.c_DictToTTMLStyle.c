
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_size; TYPE_2__** p_entries; } ;
typedef TYPE_1__ vlc_dictionary_t ;
struct TYPE_6__ {int p_value; int psz_key; struct TYPE_6__* p_next; } ;
typedef TYPE_2__ vlc_dictionary_entry_t ;
typedef int ttml_style_t ;
typedef int ttml_context_t ;


 int ComputeTTMLStyles (int *,TYPE_1__ const*,int *) ;
 int FillTTMLStyle (int ,int ,int *) ;

__attribute__((used)) static void DictToTTMLStyle( ttml_context_t *p_ctx, const vlc_dictionary_t *p_dict,
                             ttml_style_t *p_ttml_style )
{
    for( int i = 0; i < p_dict->i_size; ++i )
    {
        for ( vlc_dictionary_entry_t* p_entry = p_dict->p_entries[i];
              p_entry != ((void*)0); p_entry = p_entry->p_next )
        {
            FillTTMLStyle( p_entry->psz_key, p_entry->p_value, p_ttml_style );
        }
    }
    ComputeTTMLStyles( p_ctx, p_dict, p_ttml_style );
}
