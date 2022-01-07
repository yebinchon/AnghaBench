
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ p_value; struct TYPE_17__* p_next; } ;
typedef TYPE_2__ vlc_dictionary_entry_t ;
struct TYPE_16__ {int p_next; } ;
struct TYPE_18__ {TYPE_1__ updt; } ;
typedef TYPE_3__ ttml_region_t ;
struct TYPE_21__ {int i_size; TYPE_2__** p_entries; } ;
struct TYPE_19__ {TYPE_6__ regions; TYPE_5__* p_rootnode; } ;
typedef TYPE_4__ ttml_context_t ;
typedef int tt_time_t ;
struct TYPE_20__ {int psz_node_name; } ;
typedef TYPE_5__ tt_node_t ;


 int ConvertNodesToRegionContent (TYPE_4__*,TYPE_5__ const*,int *,int *,int ) ;
 TYPE_5__* FindNode (TYPE_5__*,char*,int,int *) ;
 int InitTTMLContext (TYPE_5__*,TYPE_4__*) ;
 int tt_node_NameCompare (int ,char*) ;
 int vlc_dictionary_clear (TYPE_6__*,int *,int *) ;
 int vlc_dictionary_init (TYPE_6__*,int) ;

__attribute__((used)) static ttml_region_t *GenerateRegions( tt_node_t *p_rootnode, tt_time_t playbacktime )
{
    ttml_region_t* p_regions = ((void*)0);
    ttml_region_t** pp_region_last = &p_regions;

    if( !tt_node_NameCompare( p_rootnode->psz_node_name, "tt" ) )
    {
        const tt_node_t *p_bodynode = FindNode( p_rootnode, "body", 1, ((void*)0) );
        if( p_bodynode )
        {
            ttml_context_t context;
            InitTTMLContext( p_rootnode, &context );
            context.p_rootnode = p_rootnode;

            vlc_dictionary_init( &context.regions, 1 );
            ConvertNodesToRegionContent( &context, p_bodynode, ((void*)0), ((void*)0), playbacktime );

            for( int i = 0; i < context.regions.i_size; ++i )
            {
                for ( const vlc_dictionary_entry_t* p_entry = context.regions.p_entries[i];
                                                    p_entry != ((void*)0); p_entry = p_entry->p_next )
                {
                    *pp_region_last = (ttml_region_t *) p_entry->p_value;
                    pp_region_last = (ttml_region_t **) &(*pp_region_last)->updt.p_next;
                }
            }

            vlc_dictionary_clear( &context.regions, ((void*)0), ((void*)0) );
        }
    }
    else if ( !tt_node_NameCompare( p_rootnode->psz_node_name, "div" ) ||
              !tt_node_NameCompare( p_rootnode->psz_node_name, "p" ) )
    {

    }

    return p_regions;
}
