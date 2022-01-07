
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_dictionary_t ;
typedef int ttml_style_t ;
typedef int ttml_context_t ;
struct TYPE_4__ {int attr_dict; struct TYPE_4__* p_parent; } ;
typedef TYPE_1__ tt_node_t ;


 int DictMergeWithRegionID (int *,char const*,int *) ;
 int DictMergeWithStyleID (int *,char const*,int *) ;
 int DictToTTMLStyle (int *,int *,int *) ;
 int DictionaryMerge (int *,int *,int) ;
 int assert (TYPE_1__*) ;
 int * ttml_style_New () ;
 int vlc_dictionary_clear (int *,int *,int *) ;
 int vlc_dictionary_init (int *,int ) ;
 int vlc_dictionary_is_empty (int *) ;
 scalar_t__ vlc_dictionary_value_for_key (int *,char*) ;

__attribute__((used)) static ttml_style_t * InheritTTMLStyles( ttml_context_t *p_ctx, tt_node_t *p_node )
{
    assert( p_node );
    ttml_style_t *p_ttml_style = ((void*)0);
    vlc_dictionary_t merged;
    vlc_dictionary_init( &merged, 0 );


    for( ; p_node; p_node = p_node->p_parent )
    {
        DictionaryMerge( &p_node->attr_dict, &merged, 0 );

        const char *psz_styleid = (const char *)
                vlc_dictionary_value_for_key( &p_node->attr_dict, "style" );
        if( psz_styleid )
            DictMergeWithStyleID( p_ctx, psz_styleid, &merged );

        const char *psz_regionid = (const char *)
                vlc_dictionary_value_for_key( &p_node->attr_dict, "region" );
        if( psz_regionid )
            DictMergeWithRegionID( p_ctx, psz_regionid, &merged );
    }

    if( !vlc_dictionary_is_empty( &merged ) && (p_ttml_style = ttml_style_New()) )
    {
        DictToTTMLStyle( p_ctx, &merged, p_ttml_style );
    }

    vlc_dictionary_clear( &merged, ((void*)0), ((void*)0) );

    return p_ttml_style;
}
