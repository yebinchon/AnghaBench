
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int demux_t ;


 int VLC_SUCCESS ;
 int free (char*) ;
 int msg_Dbg (int *,char*,char*,...) ;
 char* nscdec (int *,char*) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strncasecmp (char*,char*,int) ;

__attribute__((used)) static int ParseLine ( demux_t *p_demux, char *psz_line )
{
    char *psz_bol;
    char *psz_value;

    psz_bol = psz_line;

    while( *psz_bol == ' ' || *psz_bol == '\t' ||
           *psz_bol == '\n' || *psz_bol == '\r' )
    {
        psz_bol++;
    }
    psz_value = strchr( psz_bol, '=' );
    if( psz_value == ((void*)0) )
    {
        return 0;
    }
    *psz_value = '\0';
    psz_value++;

    if( !strncasecmp( psz_value, "0x", 2 ) )
    {
        int i_value;
        sscanf( psz_value, "%x", &i_value );
        msg_Dbg( p_demux, "%s = %d", psz_bol, i_value );
    }
    else if( !strncasecmp( psz_bol, "Format", 6 ) )
    {
        msg_Dbg( p_demux, "%s = asf header", psz_bol );
    }
    else
    {

        char *psz_out;
        psz_out = nscdec( (vlc_object_t *)p_demux, psz_value );
        if( psz_out )
        {
            msg_Dbg( p_demux, "%s = %s", psz_bol, psz_out );
            free( psz_out );
        }
    }
    return VLC_SUCCESS;
}
