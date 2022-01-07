
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; } ;
struct reader {char* psz_name; TYPE_2__* p_data; int pf_seek; int pf_tell; int pf_peek; int pf_read; int pf_getsize; int pf_close; TYPE_1__ u; } ;
struct TYPE_6__ {int p_libvlc_int; } ;
typedef TYPE_2__ libvlc_instance_t ;
typedef int argv ;


 int assert (struct reader*) ;
 struct reader* calloc (int,int) ;
 int free (struct reader*) ;
 TYPE_2__* libvlc_new (int,char const**) ;
 int libvlc_release (TYPE_2__*) ;
 int stream_close ;
 int stream_getsize ;
 int stream_peek ;
 int stream_read ;
 int stream_seek ;
 int stream_tell ;
 int vlc_stream_NewURL (int ,char const*) ;

__attribute__((used)) static struct reader *
stream_open( const char *psz_url )
{
    libvlc_instance_t *p_vlc;
    struct reader *p_reader;
    const char * argv[] = {
        "-v",
        "--ignore-config",
        "-I",
        "dummy",
        "--no-media-library",
        "--vout=dummy",
        "--aout=dummy",
    };

    p_reader = calloc( 1, sizeof(struct reader) );
    assert( p_reader );

    p_vlc = libvlc_new( sizeof(argv) / sizeof(argv[0]), argv );
    assert( p_vlc != ((void*)0) );

    p_reader->u.s = vlc_stream_NewURL( p_vlc->p_libvlc_int, psz_url );
    if( !p_reader->u.s )
    {
        libvlc_release( p_vlc );
        free( p_reader );
        return ((void*)0);
    }
    p_reader->pf_close = stream_close;
    p_reader->pf_getsize = stream_getsize;
    p_reader->pf_read = stream_read;
    p_reader->pf_peek = stream_peek;
    p_reader->pf_tell = stream_tell;
    p_reader->pf_seek = stream_seek;
    p_reader->p_data = p_vlc;
    p_reader->psz_name = "stream";
    return p_reader;
}
