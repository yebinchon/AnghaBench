
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {char* psz_ports; char** pp_jack_port_table; int i_match_ports; int p_jack_client; } ;
typedef TYPE_2__ demux_sys_t ;


 int JackPortIsOutput ;
 int free (char const**) ;
 char** jack_get_ports (int ,char*,int *,int ) ;
 int msg_Err (TYPE_1__*,char*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 char* vlc_uri_decode_duplicate (char*) ;
 char** xrealloc (char**,int) ;

__attribute__((used)) static void Port_finder( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    char *psz_expr = p_sys->psz_ports;
    char *token = ((void*)0);
    char *state = ((void*)0);
    char *psz_uri = ((void*)0);
    const char **pp_jack_port_output = ((void*)0);
    int i_out_ports = 0;
    int i_total_out_ports =0;
    p_sys->pp_jack_port_table = ((void*)0);


    for( token = strtok_r( psz_expr, ",", &state ); token;
            token = strtok_r( ((void*)0), ",", &state ) )
    {
        psz_uri = vlc_uri_decode_duplicate( token );

        pp_jack_port_output = jack_get_ports( p_sys->p_jack_client,
           psz_uri, ((void*)0), JackPortIsOutput );
        if( pp_jack_port_output == ((void*)0) )
            msg_Err( p_demux, "port(s) asked not found:%s", psz_uri );
        else
        {
            while( pp_jack_port_output[i_out_ports] )
                i_out_ports++;

            p_sys->pp_jack_port_table = xrealloc( p_sys->pp_jack_port_table,
                (i_out_ports * sizeof( char * ) + i_total_out_ports * sizeof( char * ) ) );

            for(int i=0; i<i_out_ports;i++)
                p_sys->pp_jack_port_table[i_total_out_ports+i] = ( char * ) pp_jack_port_output[i];

            i_total_out_ports += i_out_ports;

            free( pp_jack_port_output );
        }
    }

    p_sys->i_match_ports = i_total_out_ports;
}
