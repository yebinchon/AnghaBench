
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_memstream {char* ptr; int length; } ;
struct fetcher_request {int item; } ;
typedef int stream_t ;
struct TYPE_5__ {int owner; } ;
typedef TYPE_1__ input_fetcher_t ;
typedef int buffer ;


 int AddAlbumCache (TYPE_1__*,int ,int) ;
 int FREENULL (char*) ;
 int NotifyArtFetchEnded (struct fetcher_request*,int ) ;
 int ReadAlbumCache (TYPE_1__*,int ) ;
 int free (char*) ;
 int input_SaveArt (int ,int ,char*,int ,int *) ;
 char* input_item_GetArtURL (int ) ;
 int input_item_SetArtFetched (int ,int) ;
 int strncasecmp (char*,char*,int) ;
 int var_SetAddress (int ,char*,int ) ;
 scalar_t__ vlc_killed () ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_write (struct vlc_memstream*,char*,int) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_NewURL (int ,char*) ;
 int vlc_stream_Read (int *,char*,int) ;

__attribute__((used)) static void Downloader( input_fetcher_t* fetcher,
    struct fetcher_request* req )
{
    ReadAlbumCache( fetcher, req->item );

    char *psz_arturl = input_item_GetArtURL( req->item );
    if( !psz_arturl )
        goto error;

    if( !strncasecmp( psz_arturl, "file://", 7 ) ||
        !strncasecmp( psz_arturl, "attachment://", 13 ) )
        goto out;

    stream_t* source = vlc_stream_NewURL( fetcher->owner, psz_arturl );

    if( !source )
        goto error;

    struct vlc_memstream output_stream;
    vlc_memstream_open( &output_stream );

    for( ;; )
    {
        char buffer[2048];

        int read = vlc_stream_Read( source, buffer, sizeof( buffer ) );
        if( read <= 0 )
            break;

        if( (int)vlc_memstream_write( &output_stream, buffer, read ) < read )
            break;
    }

    vlc_stream_Delete( source );

    if( vlc_memstream_close( &output_stream ) )
        goto error;

    if( vlc_killed() )
    {
        free( output_stream.ptr );
        goto error;
    }

    input_SaveArt( fetcher->owner, req->item, output_stream.ptr,
                   output_stream.length, ((void*)0) );

    free( output_stream.ptr );
    AddAlbumCache( fetcher, req->item, 1 );

out:
    if( psz_arturl )
    {
        var_SetAddress( fetcher->owner, "item-change", req->item );
        input_item_SetArtFetched( req->item, 1 );
    }

    free( psz_arturl );
    NotifyArtFetchEnded(req, psz_arturl != ((void*)0));
    return;

error:
    FREENULL( psz_arturl );
    goto out;
}
