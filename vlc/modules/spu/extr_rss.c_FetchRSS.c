
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xml_reader_t ;
typedef int stream_t ;
struct TYPE_15__ {int psz_url; int * psz_image; int * p_pic; int * p_items; scalar_t__ i_items; int * psz_link; int * psz_description; int * psz_title; } ;
typedef TYPE_1__ rss_feed_t ;
struct TYPE_16__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_17__ {int i_feeds; int b_images; TYPE_1__* p_feeds; } ;
typedef TYPE_3__ filter_sys_t ;


 int FreeRSS (TYPE_1__*,int) ;
 int * LoadImage (TYPE_2__*,int *) ;
 int ParseFeed (TYPE_2__*,int *,TYPE_1__*) ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;
 int msg_Err (TYPE_2__*,char*,int ) ;
 int strdup (int ) ;
 TYPE_1__* vlc_alloc (int,int) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (TYPE_2__*,int ) ;
 int * xml_ReaderCreate (TYPE_2__*,int *) ;
 int xml_ReaderDelete (int *) ;

__attribute__((used)) static rss_feed_t* FetchRSS( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    stream_t *p_stream;
    xml_reader_t *p_xml_reader;
    int i_feed;



    int i_feeds = p_sys->i_feeds;
    bool b_images = p_sys->b_images;


    rss_feed_t *p_feeds = vlc_alloc( i_feeds, sizeof( rss_feed_t ) );
    if( !p_feeds )
        return ((void*)0);


    for( i_feed = 0; i_feed < i_feeds; i_feed++ )
    {
        rss_feed_t *p_feed = p_feeds + i_feed;
        rss_feed_t *p_old_feed = p_sys->p_feeds + i_feed;


        p_feed->psz_title = ((void*)0);
        p_feed->psz_description = ((void*)0);
        p_feed->psz_link = ((void*)0);
        p_feed->psz_image = ((void*)0);
        p_feed->p_pic = ((void*)0);
        p_feed->i_items = 0;
        p_feed->p_items = ((void*)0);

        p_feed->psz_url = strdup( p_old_feed->psz_url );


        msg_Dbg( p_filter, "opening %s RSS/Atom feed ...", p_feed->psz_url );

        p_stream = vlc_stream_NewURL( p_filter, p_feed->psz_url );
        if( !p_stream )
        {
            msg_Err( p_filter, "Failed to open %s for reading", p_feed->psz_url );
            p_xml_reader = ((void*)0);
            goto error;
        }

        p_xml_reader = xml_ReaderCreate( p_filter, p_stream );
        if( !p_xml_reader )
        {
            msg_Err( p_filter, "Failed to open %s for parsing", p_feed->psz_url );
            goto error;
        }


        if( !ParseFeed( p_filter, p_xml_reader, p_feed ) )
            goto error;


        if( b_images && p_feed->psz_image && !p_feed->p_pic )
        {
            p_feed->p_pic = LoadImage( p_filter, p_feed->psz_image );
        }

        msg_Dbg( p_filter, "done with %s RSS/Atom feed", p_feed->psz_url );
        xml_ReaderDelete( p_xml_reader );
        vlc_stream_Delete( p_stream );
    }

    return p_feeds;

error:
    FreeRSS( p_feeds, i_feed + 1 );
    if( p_xml_reader )
        xml_ReaderDelete( p_xml_reader );
    if( p_stream )
        vlc_stream_Delete( p_stream );

    return ((void*)0);
}
