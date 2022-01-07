
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_dictionary_t ;
struct TYPE_5__ {scalar_t__ p_rootnode; } ;
typedef TYPE_1__ ttml_context_t ;
struct TYPE_6__ {int attr_dict; } ;
typedef TYPE_2__ tt_node_t ;


 int DictionaryMerge (int *,int *,int) ;
 TYPE_2__* FindNode (scalar_t__,char*,int,char*) ;
 int assert (scalar_t__) ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 int vlc_dictionary_clear (int *,int *,int *) ;
 int vlc_dictionary_init (int *,int ) ;
 int vlc_dictionary_is_empty (int *) ;

__attribute__((used)) static void DictMergeWithStyleID( ttml_context_t *p_ctx, const char *psz_styles,
                                  vlc_dictionary_t *p_dst )
{
    assert(p_ctx->p_rootnode);
    char *psz_dup;
    if( psz_styles && p_ctx->p_rootnode && (psz_dup = strdup( psz_styles )) )
    {


        vlc_dictionary_t tempdict;
        vlc_dictionary_init( &tempdict, 0 );

        char *saveptr;
        char *psz_id = strtok_r( psz_dup, " ", &saveptr );
        while( psz_id )
        {

            const tt_node_t *p_node = FindNode( p_ctx->p_rootnode,
                                                "style", -1, psz_id );
            if( p_node )
                DictionaryMerge( &p_node->attr_dict, &tempdict, 1 );

            psz_id = strtok_r( ((void*)0), " ", &saveptr );
        }

        if( !vlc_dictionary_is_empty( &tempdict ) )
            DictionaryMerge( &tempdict, p_dst, 0 );

        vlc_dictionary_clear( &tempdict, ((void*)0), ((void*)0) );
        free( psz_dup );
    }
}
