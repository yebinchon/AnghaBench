
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_6__ {char* psz_title; char* psz_link; char* psz_description; } ;
typedef TYPE_1__ rss_item_t ;
struct TYPE_7__ {int i_items; char* psz_link; char* psz_image; char* psz_title; char* psz_description; TYPE_3__* p_items; } ;
typedef TYPE_2__ rss_feed_t ;
typedef int filter_t ;
struct TYPE_8__ {int * psz_link; int * psz_description; int * psz_title; } ;


 int FREENULL (char*) ;
 int VLC_UNUSED (int *) ;



 int free (char*) ;
 int msg_Dbg (int *,char*,char const*) ;
 char* removeWhiteChars (char const*) ;
 int strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int unlikely (int) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;
 TYPE_3__* xrealloc (TYPE_3__*,int) ;

__attribute__((used)) static bool ParseFeed( filter_t *p_filter, xml_reader_t *p_xml_reader,
                      rss_feed_t *p_feed )
{
    VLC_UNUSED(p_filter);
    const char *node;
    char *psz_eltname = ((void*)0);

    bool b_is_item = 0;
    bool b_is_image = 0;

    int i_item = 0;
    int type;

    while( (type = xml_ReaderNextNode( p_xml_reader, &node )) > 0 )
    {
        switch( type )
        {
        case 129:



            free(psz_eltname);
            psz_eltname = strdup( node );
            if( unlikely(!psz_eltname) )
                goto end;


            if( !strcmp( node, "item" ) || !strcmp( node, "entry" ) )
            {
                b_is_item = 1;
                p_feed->i_items++;
                p_feed->p_items = xrealloc( p_feed->p_items,
                                     p_feed->i_items * sizeof( rss_item_t ) );
                p_feed->p_items[p_feed->i_items-1].psz_title = ((void*)0);
                p_feed->p_items[p_feed->i_items-1].psz_description = ((void*)0);
                p_feed->p_items[p_feed->i_items-1].psz_link = ((void*)0);
            }

            else if( !strcmp( node, "image" ) )
            {
                b_is_image = 1;
            }

            else if( !strcmp( node, "link" ) )
            {
                const char *name, *value;
                char *psz_href = ((void*)0);
                char *psz_rel = ((void*)0);

                while( (name = xml_ReaderNextAttr( p_xml_reader, &value )) != ((void*)0) )
                {
                    if( !strcmp( name, "rel" ) )
                    {
                        free( psz_rel );
                        psz_rel = strdup( value );
                    }
                    else if( !strcmp( name, "href" ) )
                    {
                        free( psz_href );
                        psz_href = strdup( value );
                    }
                }


                if( psz_rel && psz_href )
                {
                    if( !strcmp( psz_rel, "alternate" ) && !b_is_item &&
                        !b_is_image && !p_feed->psz_link )
                    {
                        p_feed->psz_link = psz_href;
                    }

                    else if( ( !strcmp( psz_rel, "logo" ) ||
                               !strcmp( psz_rel, "icon" ) )
                             && !b_is_item && !b_is_image
                             && !p_feed->psz_image )
                    {
                        p_feed->psz_image = psz_href;
                    }
                    else
                    {
                        free( psz_href );
                    }
                }
                else
                {
                    free( psz_href );
                }
                free( psz_rel );
            }
            break;

        case 130:
            FREENULL( psz_eltname );




            if( !strcmp( node, "item" ) || !strcmp( node, "entry" ) )
            {
                b_is_item = 0;
                i_item++;
            }

            else if( !strcmp( node, "image" ) )
            {
                b_is_image = 0;
            }
            break;

        case 128:
        {
            if( !psz_eltname )
                break;

            char *psz_eltvalue = removeWhiteChars( node );





            if( b_is_item )
            {
                rss_item_t *p_item = p_feed->p_items+i_item;

                if( !strcmp( psz_eltname, "title" ) && !p_item->psz_title )
                {
                    p_item->psz_title = psz_eltvalue;
                }
                else if( !strcmp( psz_eltname, "link" )
                         && !p_item->psz_link )
                {
                    p_item->psz_link = psz_eltvalue;
                }

                else if( ( !strcmp( psz_eltname, "description" ) ||
                           !strcmp( psz_eltname, "summary" ) )
                          && !p_item->psz_description )
                {
                    p_item->psz_description = psz_eltvalue;
                }
                else
                {
                    free( psz_eltvalue );
                }
            }

            else if( b_is_image )
            {
                if( !strcmp( psz_eltname, "url" ) && !p_feed->psz_image )
                    p_feed->psz_image = psz_eltvalue;
                else
                    free( psz_eltvalue );
            }
            else
            {

                if( !strcmp( psz_eltname, "title" ) && !p_feed->psz_title )
                {
                    p_feed->psz_title = psz_eltvalue;
                }

                else if( !strcmp( psz_eltname, "link" ) && !p_feed->psz_link )
                {
                    p_feed->psz_link = psz_eltvalue;
                }

                else if( ( !strcmp( psz_eltname, "description" ) ||
                           !strcmp( psz_eltname, "subtitle" ) )
                         && !p_feed->psz_description )
                {
                    p_feed->psz_description = psz_eltvalue;
                }

                else if( ( !strcmp( psz_eltname, "logo" ) ||
                           !strcmp( psz_eltname, "icon" ) )
                         && !p_feed->psz_image )
                {
                    p_feed->psz_image = psz_eltvalue;
                }
                else
                {
                    free( psz_eltvalue );
                }
            }
            break;
        }
        }
    }

    free( psz_eltname );
    return 1;

end:
    return 0;
}
