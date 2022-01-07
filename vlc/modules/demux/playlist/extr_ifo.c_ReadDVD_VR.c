
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 char* StreamLocation (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ReadDVD_VR( stream_t *p_stream, input_item_node_t *node )
{
    const char *psz_location = StreamLocation(p_stream);

    size_t len = strlen( psz_location );
    char *psz_url = strdup( psz_location );

    if( unlikely( psz_url == ((void*)0) ) )
        return VLC_EGENERIC;

    strcpy( &psz_url[len - 12], "VR_MOVIE.VRO" );

    input_item_t *p_input = input_item_New( psz_url, psz_url );
    if( p_input )
    {
        input_item_node_AppendItem( node, p_input );
        input_item_Release( p_input );
    }

    free( psz_url );

    return VLC_SUCCESS;
}
