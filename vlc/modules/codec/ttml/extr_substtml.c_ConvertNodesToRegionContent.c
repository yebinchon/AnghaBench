
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ttml_style_t ;
struct TYPE_12__ {scalar_t__ p_segments; } ;
struct TYPE_11__ {int p_bytes; int i_bytes; } ;
struct TYPE_13__ {TYPE_2__ updt; TYPE_1__ bgbitmap; } ;
typedef TYPE_3__ ttml_region_t ;
typedef int ttml_context_t ;
typedef int tt_time_t ;
typedef int tt_textnode_t ;
struct TYPE_14__ {int psz_node_name; int attr_dict; int timings; TYPE_5__* p_child; } ;
typedef TYPE_4__ tt_node_t ;
struct TYPE_15__ {scalar_t__ i_type; struct TYPE_15__* p_next; } ;
typedef TYPE_5__ tt_basenode_t ;


 int AppendLineBreakToRegion (TYPE_3__*) ;
 int AppendTextToRegion (int *,int const*,int *,TYPE_3__*) ;
 int DictToTTMLStyle (int *,int *,int *) ;
 char* GetSMPTEImage (int *,char const*) ;
 TYPE_3__* GetTTMLRegion (int *,char const*) ;
 scalar_t__ TT_NODE_TYPE_TEXT ;
 int tt_node_NameCompare (int ,char*) ;
 scalar_t__ tt_time_Valid (int *) ;
 scalar_t__ tt_timings_Contains (int *,int *) ;
 int ttml_style_Delete (int *) ;
 int * ttml_style_Duplicate (int const*) ;
 int * ttml_style_New () ;
 int vlc_b64_decode_binary (int *,char const*) ;
 scalar_t__ vlc_dictionary_has_key (int *,char*) ;
 char* vlc_dictionary_value_for_key (int *,char*) ;

__attribute__((used)) static void ConvertNodesToRegionContent( ttml_context_t *p_ctx, const tt_node_t *p_node,
                                         ttml_region_t *p_region,
                                         const ttml_style_t *p_upper_set_styles,
                                         tt_time_t playbacktime )
{
    if( tt_time_Valid( &playbacktime ) &&
       !tt_timings_Contains( &p_node->timings, &playbacktime ) )
        return;

    const char *psz_regionid = (const char *)
        vlc_dictionary_value_for_key( &p_node->attr_dict, "region" );


    if( psz_regionid || p_region == ((void*)0) )
        p_region = GetTTMLRegion( p_ctx, psz_regionid );


    if( !tt_node_NameCompare( p_node->psz_node_name, "div" ) &&
         vlc_dictionary_has_key( &p_node->attr_dict, "smpte:backgroundImage" ) )
    {
        if( !p_region->bgbitmap.p_bytes )
        {
            const char *psz_id = vlc_dictionary_value_for_key( &p_node->attr_dict,
                                                               "smpte:backgroundImage" );

            if( psz_id && *psz_id == '#' )
            {
                const char *psz_base64 = GetSMPTEImage( p_ctx, &psz_id[1] );
                if( psz_base64 )
                    p_region->bgbitmap.i_bytes =
                        vlc_b64_decode_binary( &p_region->bgbitmap.p_bytes, psz_base64 );
            }
        }
    }


    if( !tt_node_NameCompare( p_node->psz_node_name, "p" ) &&
        p_region->updt.p_segments )
    {
        AppendLineBreakToRegion( p_region );
    }


    ttml_style_t *p_set_styles = (p_upper_set_styles)
                               ? ttml_style_Duplicate( p_upper_set_styles )
                               : ((void*)0);

    for( const tt_basenode_t *p_child = p_node->p_child;
                              p_child; p_child = p_child->p_next )
    {
        if( p_child->i_type == TT_NODE_TYPE_TEXT )
        {
            AppendTextToRegion( p_ctx, (const tt_textnode_t *) p_child,
                                p_set_styles, p_region );
        }
        else if( !tt_node_NameCompare( ((const tt_node_t *)p_child)->psz_node_name, "set" ) )
        {
            const tt_node_t *p_set = (const tt_node_t *)p_child;
            if( !tt_time_Valid( &playbacktime ) ||
                tt_timings_Contains( &p_set->timings, &playbacktime ) )
            {
                if( p_set_styles != ((void*)0) || (p_set_styles = ttml_style_New()) )
                {

                    DictToTTMLStyle( p_ctx, &p_set->attr_dict, p_set_styles );
                }
            }
        }
        else if( !tt_node_NameCompare( ((const tt_node_t *)p_child)->psz_node_name, "br" ) )
        {
            AppendLineBreakToRegion( p_region );
        }
        else
        {
            ConvertNodesToRegionContent( p_ctx, (const tt_node_t *) p_child,
                                         p_region, p_set_styles, playbacktime );
        }
    }

    if( p_set_styles )
        ttml_style_Delete( p_set_styles );
}
