
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tab ;
struct item_type_entry {char* member_0; int const member_1; int member_2; int b_net; int i_type; int psz_scheme; } ;
struct TYPE_3__ {int psz_uri; } ;
typedef TYPE_1__ input_item_t ;
typedef enum input_item_type_e { ____Placeholder_input_item_type_e } input_item_type_e ;


 size_t ARRAY_SIZE (struct item_type_entry const*) ;







 int assert (int) ;
 struct item_type_entry* bsearch (int ,struct item_type_entry const*,size_t,int,scalar_t__ (*) (int ,struct item_type_entry const*)) ;
 int * strstr (int ,char*) ;
 scalar_t__ typecmp (int ,struct item_type_entry const*) ;

__attribute__((used)) static enum input_item_type_e GuessType( const input_item_t *p_item, bool *p_net )
{
    static const struct item_type_entry tab[] =
    {

        { "alsa", 134, 0 },
        { "atsc", 134, 0 },
        { "bd", 132, 0 },
        { "bluray", 132, 0 },
        { "cable", 134, 0 },
        { "cdda", 132, 0 },
        { "cqam", 134, 0 },
        { "dc1394", 134, 0 },
        { "dccp", 129, 1 },
        { "deckli", 134, 0 },
        { "dir", 133, 0 },
        { "dshow", 134, 0 },
        { "dtv", 134, 0 },
        { "dvb", 134, 0 },
        { "dvd", 132, 0 },
        { "eyetv", 134, 0 },
        { "fd", 128, 0 },
        { "file", 131, 0 },
        { "ftp", 131, 1 },
        { "http", 131, 1 },
        { "icyx", 129, 1 },
        { "imem", 128, 0 },
        { "isdb-", 134, 0 },
        { "itpc", 130, 1 },
        { "jack", 134, 0 },
        { "linsys", 134, 0 },
        { "live", 129, 1 },
        { "mms", 129, 1 },
        { "mtp", 132, 0 },
        { "nfs", 131, 1 },
        { "ofdm", 134, 0 },
        { "oss", 134, 0 },
        { "pnm", 129, 1 },
        { "pulse", 134, 0 },
        { "qam", 134, 0 },
        { "qpsk", 134, 0 },
        { "qtcapt", 134, 0 },
        { "qtsound",134, 0 },
        { "raw139", 134, 0 },
        { "rt", 129, 1 },
        { "satell", 134, 0 },
        { "satip", 129, 1 },
        { "screen", 134, 0 },
        { "sdp", 129, 1 },
        { "sftp", 131, 1 },
        { "shm", 134, 0 },
        { "smb", 131, 1 },
        { "stream", 129, 0 },
        { "svcd", 132, 0 },
        { "tcp", 129, 1 },
        { "terres", 134, 0 },
        { "udp", 129, 1 },
        { "unsv", 129, 1 },
        { "upnp", 131, 1 },
        { "usdigi", 134, 0 },
        { "v4l", 134, 0 },
        { "vcd", 132, 0 },
        { "vdr", 129, 1 },
        { "wasapi", 134, 0 },
        { "window", 134, 0 },
    };


    for( size_t i = 1; i < ARRAY_SIZE( tab ); i++ )
        assert( typecmp( (tab + i)->psz_scheme, tab + i - 1 ) > 0 );


    *p_net = 0;

    if( strstr( p_item->psz_uri, "://" ) == ((void*)0) )
        return 128;

    const struct item_type_entry *e =
        bsearch( p_item->psz_uri, tab, ARRAY_SIZE( tab ),
                 sizeof( tab[0] ), typecmp );
    if( e == ((void*)0) )
        return 128;

    *p_net = e->b_net;
    return e->i_type;
}
