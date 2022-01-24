#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_reader_t ;
struct TYPE_6__ {char* psz_title; char* psz_link; char* psz_description; } ;
typedef  TYPE_1__ rss_item_t ;
struct TYPE_7__ {int i_items; char* psz_link; char* psz_image; char* psz_title; char* psz_description; TYPE_3__* p_items; } ;
typedef  TYPE_2__ rss_feed_t ;
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_8__ {int /*<<< orphan*/ * psz_link; int /*<<< orphan*/ * psz_description; int /*<<< orphan*/ * psz_title; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  XML_READER_ENDELEM 130 
#define  XML_READER_STARTELEM 129 
#define  XML_READER_TEXT 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const**) ; 
 TYPE_3__* FUNC10 (TYPE_3__*,int) ; 

__attribute__((used)) static bool FUNC11( filter_t *p_filter, xml_reader_t *p_xml_reader,
                      rss_feed_t *p_feed )
{
    FUNC1(p_filter);
    const char *node;
    char *psz_eltname = NULL;

    bool b_is_item = false;
    bool b_is_image = false;

    int i_item = 0;
    int type;

    while( (type = FUNC9( p_xml_reader, &node )) > 0 )
    {
        switch( type )
        {
        case XML_READER_STARTELEM:
#ifdef RSS_DEBUG
            msg_Dbg( p_filter, "element <%s>", node );
#endif
            FUNC2(psz_eltname);
            psz_eltname = FUNC6( node );
            if( FUNC7(!psz_eltname) )
                goto end;

            /* rss or atom */
            if( !FUNC5( node, "item" ) || !FUNC5( node, "entry" ) )
            {
                b_is_item = true;
                p_feed->i_items++;
                p_feed->p_items = FUNC10( p_feed->p_items,
                                     p_feed->i_items * sizeof( rss_item_t ) );
                p_feed->p_items[p_feed->i_items-1].psz_title = NULL;
                p_feed->p_items[p_feed->i_items-1].psz_description = NULL;
                p_feed->p_items[p_feed->i_items-1].psz_link = NULL;
            }
            /* rss */
            else if( !FUNC5( node, "image" ) )
            {
                b_is_image = true;
            }
            /* atom */
            else if( !FUNC5( node, "link" ) )
            {
                const char *name, *value;
                char *psz_href = NULL;
                char *psz_rel = NULL;

                while( (name = FUNC8( p_xml_reader, &value )) != NULL )
                {
                    if( !FUNC5( name, "rel" ) )
                    {
                        FUNC2( psz_rel );
                        psz_rel = FUNC6( value );
                    }
                    else if( !FUNC5( name, "href" ) )
                    {
                        FUNC2( psz_href );
                        psz_href = FUNC6( value );
                    }
                }

                /* "rel" and "href" must be defined */
                if( psz_rel && psz_href )
                {
                    if( !FUNC5( psz_rel, "alternate" ) && !b_is_item &&
                        !b_is_image && !p_feed->psz_link )
                    {
                        p_feed->psz_link = psz_href;
                    }
                    /* this isn't in the rfc but i found some ... */
                    else if( ( !FUNC5( psz_rel, "logo" ) ||
                               !FUNC5( psz_rel, "icon" ) )
                             && !b_is_item && !b_is_image
                             && !p_feed->psz_image )
                    {
                        p_feed->psz_image = psz_href;
                    }
                    else
                    {
                        FUNC2( psz_href );
                    }
                }
                else
                {
                    FUNC2( psz_href );
                }
                FUNC2( psz_rel );
            }
            break;

        case XML_READER_ENDELEM:
            FUNC0( psz_eltname );
#ifdef RSS_DEBUG
            msg_Dbg( p_filter, "element end </%s>", node );
#endif
            /* rss or atom */
            if( !FUNC5( node, "item" ) || !FUNC5( node, "entry" ) )
            {
                b_is_item = false;
                i_item++;
            }
            /* rss */
            else if( !FUNC5( node, "image" ) )
            {
                b_is_image = false;
            }
            break;

        case XML_READER_TEXT:
        {
            if( !psz_eltname )
                break;

            char *psz_eltvalue = FUNC4( node );

#ifdef RSS_DEBUG
            msg_Dbg( p_filter, "  text : \"%s\"", psz_eltvalue );
#endif
            /* Is it an item ? */
            if( b_is_item )
            {
                rss_item_t *p_item = p_feed->p_items+i_item;
                /* rss/atom */
                if( !FUNC5( psz_eltname, "title" ) && !p_item->psz_title )
                {
                    p_item->psz_title = psz_eltvalue;
                }
                else if( !FUNC5( psz_eltname, "link" ) /* rss */
                         && !p_item->psz_link )
                {
                    p_item->psz_link = psz_eltvalue;
                }
                /* rss/atom */
                else if( ( !FUNC5( psz_eltname, "description" ) ||
                           !FUNC5( psz_eltname, "summary" ) )
                          && !p_item->psz_description )
                {
                    p_item->psz_description = psz_eltvalue;
                }
                else
                {
                    FUNC2( psz_eltvalue );
                }
            }
            /* Is it an image ? */
            else if( b_is_image )
            {
                if( !FUNC5( psz_eltname, "url" ) && !p_feed->psz_image )
                    p_feed->psz_image = psz_eltvalue;
                else
                    FUNC2( psz_eltvalue );
            }
            else
            {
                /* rss/atom */
                if( !FUNC5( psz_eltname, "title" ) && !p_feed->psz_title )
                {
                    p_feed->psz_title = psz_eltvalue;
                }
                /* rss */
                else if( !FUNC5( psz_eltname, "link" ) && !p_feed->psz_link )
                {
                    p_feed->psz_link = psz_eltvalue;
                }
                /* rss ad atom */
                else if( ( !FUNC5( psz_eltname, "description" ) ||
                           !FUNC5( psz_eltname, "subtitle" ) )
                         && !p_feed->psz_description )
                {
                    p_feed->psz_description = psz_eltvalue;
                }
                /* rss */
                else if( ( !FUNC5( psz_eltname, "logo" ) ||
                           !FUNC5( psz_eltname, "icon" ) )
                         && !p_feed->psz_image )
                {
                    p_feed->psz_image = psz_eltvalue;
                }
                else
                {
                    FUNC2( psz_eltvalue );
                }
            }
            break;
        }
        }
    }

    FUNC2( psz_eltname );
    return true;

end:
    return false;
}