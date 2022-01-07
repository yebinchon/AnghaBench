
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_10__ {int i_data_peeked; char* p_peek; char* psz_separator; } ;
typedef TYPE_2__ demux_sys_t ;


 char* GetLine (TYPE_1__*,int*) ;
 int Peek (TYPE_1__*,int) ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool CheckMimeHeader( demux_t *p_demux, int *p_header_size )
{
    bool b_jpeg = 0;
    int i_pos = 0;
    char *psz_line;
    char *p_ch;
    demux_sys_t *p_sys = p_demux->p_sys;

    *p_header_size = -1;
    if( !Peek( p_demux, 1 ) )
    {
        msg_Err( p_demux, "cannot peek" );
        return 0;
    }
    if( p_sys->i_data_peeked < 5)
    {
        msg_Err( p_demux, "data shortage" );
        return 0;
    }
    if( strncmp( (char *)p_sys->p_peek, "--", 2 ) != 0
        && strncmp( (char *)p_sys->p_peek, "\r\n--", 4 ) != 0 )
    {
        *p_header_size = 0;
        return 0;
    }
    else
    {
        i_pos = *p_sys->p_peek == '-' ? 2 : 4;
        psz_line = GetLine( p_demux, &i_pos );
        if( ((void*)0) == psz_line )
        {
            msg_Err( p_demux, "no EOL" );
            return 0;
        }


        if( p_sys->psz_separator == ((void*)0) )
        {
            p_sys->psz_separator = psz_line;
            msg_Dbg( p_demux, "Multipart MIME detected, using separator: %s",
                     p_sys->psz_separator );
        }
        else
        {
            if( strcmp( psz_line, p_sys->psz_separator ) )
            {
                msg_Warn( p_demux, "separator %s does not match %s", psz_line,
                          p_sys->psz_separator );
            }
            free( psz_line );
        }
    }

    psz_line = GetLine( p_demux, &i_pos );
    while( psz_line && *psz_line )
    {
        if( !strncasecmp( psz_line, "Content-Type:", 13 ) )
        {
            p_ch = psz_line + 13;
            while( *p_ch != '\0' && ( *p_ch == ' ' || *p_ch == '\t' ) ) p_ch++;
            if( strncasecmp( p_ch, "image/jpeg", 10 ) )
            {
                msg_Warn( p_demux, "%s, image/jpeg is expected", psz_line );
                b_jpeg = 0;
            }
            else
            {
                b_jpeg = 1;
            }
        }
        else
        {
            msg_Dbg( p_demux, "discard MIME header: %s", psz_line );
        }
        free( psz_line );
        psz_line = GetLine( p_demux, &i_pos );
    }

    if( ((void*)0) == psz_line )
    {
        msg_Err( p_demux, "no EOL" );
        return 0;
    }

    free( psz_line );

    *p_header_size = i_pos;
    return b_jpeg;
}
