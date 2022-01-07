
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ delivery; int inner_fec; void* i_rate; int polarization; void* i_freq; } ;
typedef TYPE_1__ scan_list_entry_t ;
typedef int FILE ;


 scalar_t__ SCAN_DELIVERY_DVB_S ;
 scalar_t__ SCAN_DELIVERY_DVB_S2 ;
 int SCAN_POLARIZATION_HORIZONTAL ;
 int SCAN_POLARIZATION_VERTICAL ;
 void* atoi (char*) ;
 int fclose (int *) ;
 int getline (char**,size_t*,int *) ;
 int msg_Err (int *,char*,char const*) ;
 TYPE_1__* scan_list_entry_New () ;
 scalar_t__ scan_list_entry_add (TYPE_1__***,TYPE_1__*) ;
 int scan_list_parse_fec (char*) ;
 int strcasecmp (char*,char*) ;
 int strcmp (char*,char*) ;
 char* strtok_r (char*,char const*,char**) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_fopen (char const*,char*) ;

scan_list_entry_t * scan_list_dvbv3_load( vlc_object_t *p_obj, const char *psz_source, size_t *pi_count )
{
    FILE *p_file = vlc_fopen( psz_source, "r" );
    if( !p_file )
    {
        msg_Err( p_obj, "failed to open satellite file (%s)", psz_source );
        return ((void*)0);
    }

    scan_list_entry_t *p_list = ((void*)0);
    scan_list_entry_t **pp_list_last = &p_list;
    scan_list_entry_t *p_entry = ((void*)0);
    *pi_count = 0;

    const char *psz_delims = " \t";

    char *psz_line = ((void*)0);
    size_t i_len = 0;
    ssize_t i_read;

    while ( (i_read = getline( &psz_line, &i_len, p_file )) != -1 )
    {
        char *psz_token;
        char *p_save = ((void*)0);

        if( p_entry && scan_list_entry_add( &pp_list_last, p_entry ) )
            (*pi_count)++;

        p_entry = scan_list_entry_New();
        if( unlikely(p_entry == ((void*)0)) )
            continue;


        if( !(psz_token = strtok_r( psz_line, psz_delims, &p_save )) )
            continue;

        if( !strcmp( psz_token, "S" ) )
        {
            p_entry->delivery = SCAN_DELIVERY_DVB_S;
        }
        else if( !strcmp( psz_token, "S2" ) )
        {
            p_entry->delivery = SCAN_DELIVERY_DVB_S2;
        }


        if( p_entry->delivery == SCAN_DELIVERY_DVB_S || p_entry->delivery == SCAN_DELIVERY_DVB_S2 )
        {

            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;
            p_entry->i_freq = atoi( psz_token );


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;
            p_entry->polarization = !strcasecmp(psz_token, "H") ? SCAN_POLARIZATION_HORIZONTAL
                                                                : SCAN_POLARIZATION_VERTICAL;


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;
            p_entry->i_rate = atoi( psz_token );


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;
            p_entry->inner_fec = scan_list_parse_fec( psz_token );


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;


            if( !(psz_token = strtok_r( ((void*)0), psz_delims, &p_save )) )
                continue;
        }

    }

    if( p_entry && scan_list_entry_add( &pp_list_last, p_entry ) )
        (*pi_count)++;

    fclose( p_file );

    return p_list;
}
