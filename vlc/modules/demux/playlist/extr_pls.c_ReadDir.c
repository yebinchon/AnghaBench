
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_url; int s; } ;
typedef TYPE_1__ stream_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 char* FromLatin1 (char*) ;
 int IsASCII (char*) ;
 int IsUTF8 (char*) ;
 char* ProcessMRL (char*,int ) ;
 int VLC_SUCCESS ;
 char* atoi (char*) ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;
 int input_item_Release (int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Warn (TYPE_1__*,char*,...) ;
 int sscanf (char*,char*,int*) ;
 int strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strncasecmp (char*,char*,int) ;
 char* vlc_stream_ReadLine (int ) ;

__attribute__((used)) static int ReadDir( stream_t *p_demux, input_item_node_t *p_subitems )
{
    char *psz_name = ((void*)0);
    char *psz_line;
    char *psz_mrl = ((void*)0);
    char *psz_mrl_orig = ((void*)0);
    char *psz_key;
    char *psz_value;
    int i_item = -1;
    input_item_t *p_input;
    bool ascii = 1;
    bool unicode = 1;

    while( ( psz_line = vlc_stream_ReadLine( p_demux->s ) ) )
    {
        if (ascii && !IsASCII(psz_line))
        {
            unicode = IsUTF8(psz_line);
            ascii = 0;
        }

        if (!unicode)
        {
            char *latin = FromLatin1(psz_line);
            free(psz_line);
            psz_line = latin;
        }

        if( !strncasecmp( psz_line, "[playlist]", sizeof("[playlist]")-1 ) )
        {
            free( psz_line );
            continue;
        }
        psz_key = psz_line;
        psz_value = strchr( psz_line, '=' );
        if( psz_value )
        {
            *psz_value='\0';
            psz_value++;
        }
        else
        {
            free( psz_line );
            continue;
        }
        if( !strcasecmp( psz_key, "version" ) )
        {
            msg_Dbg( p_demux, "pls file version: %s", psz_value );
            free( psz_line );
            continue;
        }
        if( !strcasecmp( psz_key, "numberofentries" ) )
        {
            msg_Dbg( p_demux, "pls should have %d entries", atoi(psz_value) );
            free( psz_line);
            continue;
        }


        int i_new_item;
        if( sscanf( psz_key, "%*[^0-9]%d", &i_new_item ) != 1 )
        {
            msg_Warn( p_demux, "couldn't find number of items" );
            free( psz_line );
            continue;
        }

        if( i_item == -1 )
            i_item = i_new_item;
        else if( i_item != i_new_item )
        {

            if( psz_mrl )
            {
                p_input = input_item_New( psz_mrl, psz_name );
                input_item_node_AppendItem( p_subitems, p_input );
                input_item_Release( p_input );
                free( psz_mrl_orig );
                psz_mrl_orig = psz_mrl = ((void*)0);
            }
            else
            {
                msg_Warn( p_demux, "no file= part found for item %d", i_item );
            }
            free( psz_name );
            psz_name = ((void*)0);
            i_item = i_new_item;
        }

        if( !strncasecmp( psz_key, "file", sizeof("file") -1 ) )
        {
            free( psz_mrl_orig );
            psz_mrl_orig =
            psz_mrl = ProcessMRL( psz_value, p_demux->psz_url );
        }
        else if( !strncasecmp( psz_key, "title", sizeof("title") -1 ) )
        {
            free( psz_name );
            psz_name = strdup( psz_value );
        }
        else if( !strncasecmp( psz_key, "length", sizeof("length") -1 ) )
                                     ;
        else
        {
            msg_Warn( p_demux, "unknown key found in pls file: %s", psz_key );
        }
        free( psz_line );
    }

    if( psz_mrl )
    {
        p_input = input_item_New( psz_mrl, psz_name );
        input_item_node_AppendItem( p_subitems, p_input );
        input_item_Release( p_input );
        free( psz_mrl_orig );
    }
    else
    {
        msg_Warn( p_demux, "no file= part found for item %d", i_item );
    }
    free( psz_name );
    psz_name = ((void*)0);

    return VLC_SUCCESS;
}
