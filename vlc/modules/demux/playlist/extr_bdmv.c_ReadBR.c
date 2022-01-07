
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 char* StreamLocation (int *) ;
 int VLC_ENOMEM ;
 int VLC_INPUT_OPTION_TRUSTED ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int input_item_AddOption (int *,char*,int ) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 scalar_t__ strlen (char const*) ;
 char* strndup (char const*,scalar_t__) ;

__attribute__((used)) static int ReadBR( stream_t *p_stream, input_item_node_t *node )
{
    const char *psz_loc = StreamLocation(p_stream);


    char *psz_url = strndup( psz_loc, strlen( psz_loc) - 15 );
    if( !psz_url )
        return VLC_ENOMEM;

    input_item_t *p_input = input_item_New( psz_url, psz_url );
    input_item_AddOption( p_input, "demux=bluray", VLC_INPUT_OPTION_TRUSTED );
    input_item_node_AppendItem( node, p_input );
    input_item_Release( p_input );

    free( psz_url );

    return VLC_SUCCESS;
}
