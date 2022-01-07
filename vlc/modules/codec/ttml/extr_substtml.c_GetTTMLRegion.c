
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int i_size; TYPE_2__** p_entries; } ;
typedef TYPE_1__ vlc_dictionary_t ;
struct TYPE_11__ {int p_value; int psz_key; struct TYPE_11__* p_next; } ;
typedef TYPE_2__ vlc_dictionary_entry_t ;
typedef int ttml_region_t ;
struct TYPE_12__ {int regions; } ;
typedef TYPE_3__ ttml_context_t ;


 int DictMergeWithRegionID (TYPE_3__*,char const*,TYPE_1__*) ;
 int FillRegionStyle (TYPE_3__*,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * ttml_region_New (int) ;
 int vlc_dictionary_clear (TYPE_1__*,int *,int *) ;
 int vlc_dictionary_init (TYPE_1__*,int ) ;
 int vlc_dictionary_insert (int *,char const*,int *) ;
 scalar_t__ vlc_dictionary_value_for_key (int *,char const*) ;

__attribute__((used)) static ttml_region_t *GetTTMLRegion( ttml_context_t *p_ctx, const char *psz_region_id )
{
    ttml_region_t *p_region = ( ttml_region_t * )
            vlc_dictionary_value_for_key( &p_ctx->regions, psz_region_id ? psz_region_id : "" );
    if( p_region == ((void*)0) )
    {
        if( psz_region_id && strcmp( psz_region_id, "" ) )
        {


            vlc_dictionary_t merged;
            vlc_dictionary_init( &merged, 0 );

            DictMergeWithRegionID( p_ctx, psz_region_id, &merged );
            if( (p_region = ttml_region_New( 0 )) )
            {

                for( int i = 0; i < merged.i_size; ++i )
                {
                    for ( vlc_dictionary_entry_t* p_entry = merged.p_entries[i];
                          p_entry != ((void*)0); p_entry = p_entry->p_next )
                    {
                        FillRegionStyle( p_ctx, p_entry->psz_key, p_entry->p_value,
                                         p_region );
                    }
                }
            }
            vlc_dictionary_clear( &merged, ((void*)0), ((void*)0) );

            vlc_dictionary_insert( &p_ctx->regions, psz_region_id, p_region );
        }
        else if( (p_region = ttml_region_New( 1 )) )
        {
            vlc_dictionary_insert( &p_ctx->regions, "", p_region );
        }
    }
    return p_region;
}
