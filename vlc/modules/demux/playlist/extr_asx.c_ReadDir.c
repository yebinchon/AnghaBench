
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_10__ {char const* psz_url; struct TYPE_10__* s; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int * GetCurrentItem (TYPE_1__*) ;
 TYPE_1__* PreparseStream (TYPE_1__*) ;
 int ProcessEntry (int*,int *,int *,int *,char*) ;
 int ReadElement (int *,char**) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int XML_READER_ENDELEM ;
 int XML_READER_ERROR ;
 int XML_READER_STARTELEM ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_SetArtist (int *,char*) ;
 int input_item_SetCopyright (int *,char*) ;
 int input_item_SetDescription (int *,char*) ;
 int input_item_SetTitle (int *,char*) ;
 int input_item_SetURL (int *,char*) ;
 int input_item_node_AppendItem (int *,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Delete (TYPE_1__*) ;
 int vlc_xml_decode (char*) ;
 int * xml_ReaderCreate (TYPE_1__*,TYPE_1__*) ;
 int xml_ReaderDelete (int *) ;
 char* xml_ReaderNextAttr (int *,char const**) ;
 int xml_ReaderNextNode (int *,char const**) ;

__attribute__((used)) static int ReadDir( stream_t *p_demux, input_item_node_t *p_subitems )
{
    if (unlikely(p_demux->psz_url == ((void*)0)))
        return VLC_EGENERIC;

    const char *psz_node = ((void*)0);
    char *psz_txt = ((void*)0);
    char *psz_base = strdup( p_demux->psz_url );
    if (unlikely(psz_base == ((void*)0)))
        return VLC_ENOMEM;

    char *psz_title_asx = ((void*)0);
    char *psz_entryref = ((void*)0);

    xml_reader_t *p_xml_reader = ((void*)0);
    input_item_t *p_current_input = GetCurrentItem( p_demux );
    stream_t* p_stream = PreparseStream( p_demux );

    bool b_first_node = 0;
    int i_type;
    int i_n_entry = 0;

    p_xml_reader = xml_ReaderCreate( p_demux, p_stream ? p_stream
                                                       : p_demux->s );
    if( !p_xml_reader )
    {
        msg_Err( p_demux, "Cannot parse ASX input file as XML");
        goto error;
    }

    do
    {
        i_type = xml_ReaderNextNode( p_xml_reader, &psz_node );
        if( i_type == XML_READER_ERROR )
            break;

        if( i_type == XML_READER_STARTELEM )
        {
            if( !b_first_node )
            {
                if(!strncasecmp( psz_node, "ASX", 3 ) )
                    b_first_node = 1;
                else
                {
                    msg_Err( p_demux, "invalid root node" );
                    goto error;
                }
            }


            if( !strncasecmp( psz_node, "TITLE", 5 ) )
            {
                if( ! ReadElement( p_xml_reader, &psz_title_asx ) )
                    break;
                input_item_SetTitle( p_current_input, psz_title_asx );
            }
            else if( !strncasecmp( psz_node, "AUTHOR", 6 ) )
            {
                if( ! ReadElement( p_xml_reader, &psz_txt ) )
                    break;
                input_item_SetArtist( p_current_input, psz_txt );
            }
            else if( !strncasecmp( psz_node, "COPYRIGHT", 9 ) )
            {
                if( ! ReadElement( p_xml_reader, &psz_txt ) )
                    break;
                input_item_SetCopyright( p_current_input, psz_txt );
            }
            else if( !strncasecmp( psz_node, "MOREINFO", 8 ) )
            {
                const char *psz_tmp;
                do
                {
                    psz_tmp = xml_ReaderNextAttr( p_xml_reader, &psz_node );
                }
                while( psz_tmp && strncasecmp( psz_tmp, "HREF", 4 ) );

                if( !psz_tmp )
                {
                    if( ! ReadElement( p_xml_reader, &psz_txt ) )
                        break;
                }
                else
                    psz_txt = strdup( psz_node );

                vlc_xml_decode( psz_txt );
                input_item_SetURL( p_current_input, psz_txt );
            }
            else if( !strncasecmp( psz_node, "ABSTRACT", 8 ) )
            {
                if( ! ReadElement( p_xml_reader, &psz_txt ) )
                    break;
                input_item_SetDescription( p_current_input, psz_txt );
            }
            else

            if( !strncasecmp( psz_node, "BASE", 4 ) )
            {
                if( ! ReadElement( p_xml_reader, &psz_base ) )
                    break;
            }
            else

            if( !strncasecmp( psz_node, "ENTRYREF", 7 ) )
            {
                const char *psz_tmp;
                do
                {
                    psz_tmp = xml_ReaderNextAttr( p_xml_reader, &psz_node );
                }
                while( psz_tmp && !strncasecmp( psz_tmp, "HREF", 4 ) );
                if( ! psz_tmp )
                    break;


                input_item_t *p_input;
                psz_txt = strdup( psz_node );
                vlc_xml_decode( psz_txt );
                p_input = input_item_New( psz_txt, psz_title_asx );
                input_item_node_AppendItem( p_subitems, p_input );

                input_item_Release( p_input );
            }
            else

            if( !strncasecmp( psz_node, "ENTRY", 5 ) )
            {
                ProcessEntry( &i_n_entry, p_xml_reader, p_subitems,
                              p_current_input, psz_base);
            }







        }
    }
    while( i_type != XML_READER_ENDELEM || strncasecmp( psz_node, "ASX", 3 ) );

error:
    free( psz_base );
    free( psz_title_asx );
    free( psz_entryref );
    free( psz_txt );

    if( p_xml_reader)
        xml_ReaderDelete( p_xml_reader );
    if( p_stream )
        vlc_stream_Delete( p_stream );

    return 0;
}
