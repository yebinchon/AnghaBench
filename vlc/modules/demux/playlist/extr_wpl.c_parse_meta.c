
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xml_reader_t ;
struct TYPE_4__ {int * p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;


 int _ (char*) ;
 int atoll (char*) ;
 int consume_tag (int *,char*) ;
 int free (char*) ;
 int input_item_AddInfo (int *,int ,int ,char*,int ) ;
 int input_item_SetGenre (int *,char*) ;
 int input_item_SetPublisher (int *,char*) ;
 int input_item_SetRating (int *,char*) ;
 int msg_Warn (TYPE_1__*,char*,char*) ;
 int strcasecmp (char const*,char*) ;
 char* strdup (char const*) ;
 int xml_ReaderIsEmptyElement (int *) ;
 char* xml_ReaderNextAttr (int *,char const**) ;

__attribute__((used)) static void parse_meta( stream_t* p_demux, input_item_t* p_input )
{
    xml_reader_t *p_reader = p_demux->p_sys;
    bool const b_empty = xml_ReaderIsEmptyElement( p_reader ) == 1;

    char *psz_meta_name = ((void*)0), *psz_meta_content = ((void*)0);
    char const *psz_attr, *psz_value;
    while( ( psz_attr = xml_ReaderNextAttr( p_reader, &psz_value ) ) )
    {
        if( psz_value == ((void*)0) )
            continue;

        if( !strcasecmp( psz_attr, "name" ) && !psz_meta_name )
            psz_meta_name = strdup( psz_value );
        else
            if( !strcasecmp( psz_attr, "content" ) && !psz_meta_content )
                psz_meta_content = strdup( psz_value );

        if( psz_meta_name && psz_meta_content )
            break;
    }

    if( b_empty == 0 )
        consume_tag( p_reader, "meta" );

    if( !psz_meta_name || !psz_meta_content )
        goto done;

    if( !strcasecmp( psz_meta_name, "TotalDuration" ) )
        input_item_AddInfo( p_input, _("Playlist"), _("Total duration"),
                            "%lld", atoll( psz_meta_content ) );
    else
        if( !strcasecmp( psz_meta_name, "Author" ) )
            input_item_SetPublisher( p_input, psz_meta_content );
    else
        if( !strcasecmp( psz_meta_name, "Rating" ) )
            input_item_SetRating( p_input, psz_meta_content );
    else
        if( !strcasecmp( psz_meta_name, "Genre" ) )
            input_item_SetGenre( p_input, psz_meta_content );
    else
        msg_Warn( p_demux, "ignoring unknown meta-attribute %s", psz_meta_name );

done:
    free( psz_meta_name );
    free( psz_meta_content );
}
