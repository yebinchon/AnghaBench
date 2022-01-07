
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_8__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int FREENULL (char*) ;
 int * GetCurrentItem (TYPE_1__*) ;
 int IsWhitespace (char const*) ;



 int atoi (char const*) ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_SetGenre (int *,char*) ;
 int input_item_SetName (int *,char const*) ;
 int input_item_SetNowPlaying (int *,char*) ;
 int input_item_node_AppendItem (int *,int *) ;
 int msg_Dbg (TYPE_1__*,char*,int ) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int msg_Warn (TYPE_1__*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int unlikely (int) ;
 char* vlc_stream_ReadLine (int ) ;
 int vlc_xml_decode (char*) ;
 int * xml_ReaderCreate (TYPE_1__*,int ) ;
 int xml_ReaderDelete (int *) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int ReadDir( stream_t *p_demux, input_item_node_t *p_subitems )
{
    int i_ret = -1;

    xml_reader_t *p_xml_reader = ((void*)0);
    char *psz_elname = ((void*)0);
    const char *node;
    input_item_t *p_input;
    char *psz_mrl = ((void*)0), *psz_title = ((void*)0), *psz_genre = ((void*)0);
    char *psz_now = ((void*)0), *psz_listeners = ((void*)0), *psz_bitrate = ((void*)0);

    input_item_t *p_current_input = GetCurrentItem(p_demux);

    free( vlc_stream_ReadLine( p_demux->s ) );

    p_xml_reader = xml_ReaderCreate( p_demux, p_demux->s );
    if( !p_xml_reader )
        return -1;



    if( xml_ReaderNextNode( p_xml_reader, &node ) != 129 )
    {
        msg_Err( p_demux, "invalid file (no root node)" );
        goto end;
    }

    if( strcmp( node, "WinampXML" ) )
    {
        msg_Err( p_demux, "invalid root node: %s", node );
        goto end;
    }





    while( (i_ret = xml_ReaderNextNode( p_xml_reader, &node )) != 129 )
        if( i_ret <= 0 )
        {
            msg_Err( p_demux, "invalid file (no child node)" );
            goto end;
        }

    if( strcmp( node, "playlist" ) )
    {
        msg_Err( p_demux, "invalid child node %s", node );
        goto end;
    }


    const char *attr, *value;
    while( (attr = xml_ReaderNextAttr( p_xml_reader, &value )) != ((void*)0) )
    {
        if( !strcmp( attr, "num_entries" ) )
            msg_Dbg( p_demux, "playlist has %d entries", atoi(value) );
        else if( !strcmp( attr, "label" ) )
            input_item_SetName( p_current_input, value );
        else
            msg_Warn( p_demux, "stray attribute %s with value %s in element"
                      " <playlist>", attr, value );
    }

    while( (i_ret = xml_ReaderNextNode( p_xml_reader, &node )) > 0 )
    {

        switch( i_ret )
        {
            case 129:
            {

                free( psz_elname );
                psz_elname = strdup( node );
                if( unlikely(!psz_elname) )
                    goto end;


                while( (attr = xml_ReaderNextAttr( p_xml_reader, &value )) )
                {
                    if( !strcmp( psz_elname, "entry" ) &&
                        !strcmp( attr, "Playstring" ) )
                    {
                        free( psz_mrl );
                        psz_mrl = strdup( value );
                    }
                    else
                    {
                        msg_Warn( p_demux, "unexpected attribute %s in <%s>",
                                  attr, psz_elname );
                    }
                }
                break;
            }

            case 128:
            {
                char **p;

                if( psz_elname == ((void*)0) )
                    break;
                if( IsWhitespace( node ) )
                    break;
                if( !strcmp( psz_elname, "Name" ) )
                    p = &psz_title;
                else if( !strcmp( psz_elname, "Genre" ) )
                    p = &psz_genre;
                else if( !strcmp( psz_elname, "Nowplaying" ) )
                    p = &psz_now;
                else if( !strcmp( psz_elname, "Listeners" ) )
                    p = &psz_listeners;
                else if( !strcmp( psz_elname, "Bitrate" ) )
                    p = &psz_bitrate;
                else
                {
                    msg_Warn( p_demux, "unexpected text in element <%s>",
                              psz_elname );
                    break;
                }
                free( *p );
                *p = strdup( node );
                break;
            }


            case 130:
            {

                if( !strcmp( node, "entry" ) )
                {
                    vlc_xml_decode( psz_mrl );
                    p_input = input_item_New( psz_mrl, psz_title );
                    if( psz_now )
                        input_item_SetNowPlaying( p_input, psz_now );
                    if( psz_genre )
                        input_item_SetGenre( p_input, psz_genre );
                    if( psz_listeners )
                        msg_Err( p_demux, "Unsupported meta listeners" );
                    if( psz_bitrate )
                        msg_Err( p_demux, "Unsupported meta bitrate" );

                    input_item_node_AppendItem( p_subitems, p_input );
                    input_item_Release( p_input );
                    FREENULL( psz_title );
                    FREENULL( psz_mrl );
                    FREENULL( psz_genre );
                    FREENULL( psz_bitrate );
                    FREENULL( psz_listeners );
                    FREENULL( psz_now );
                }
                FREENULL( psz_elname );
                break;
            }
        }
    }

    if( i_ret < 0 )
    {
        msg_Warn( p_demux, "error while parsing data" );
        i_ret = 0;
    }

end:
    free( psz_elname );

    if( p_xml_reader )
        xml_ReaderDelete( p_xml_reader );
    return i_ret;
}
