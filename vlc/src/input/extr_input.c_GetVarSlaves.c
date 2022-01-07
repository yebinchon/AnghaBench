
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_thread_t ;
typedef int input_item_slave_t ;


 int SLAVE_PRIORITY_USER ;
 int SLAVE_TYPE_AUDIO ;
 int TAB_APPEND (int,int **,int *) ;
 int free (char*) ;
 int * input_item_slave_New (char*,int ,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 scalar_t__ strstr (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 char* var_GetNonEmptyString (int *,char*) ;
 char* vlc_path2uri (char*,int *) ;

__attribute__((used)) static void GetVarSlaves( input_thread_t *p_input,
                          input_item_slave_t ***ppp_slaves, int *p_slaves )
{
    char *psz = var_GetNonEmptyString( p_input, "input-slave" );
    if( !psz )
        return;

    input_item_slave_t **pp_slaves = *ppp_slaves;
    int i_slaves = *p_slaves;

    char *psz_org = psz;
    while( psz && *psz )
    {
        while( *psz == ' ' || *psz == '#' )
            psz++;

        char *psz_delim = strchr( psz, '#' );
        if( psz_delim )
            *psz_delim++ = '\0';

        if( *psz == 0 )
            break;

        char *uri = strstr(psz, "://")
                                   ? strdup( psz ) : vlc_path2uri( psz, ((void*)0) );
        psz = psz_delim;
        if( uri == ((void*)0) )
            continue;

        input_item_slave_t *p_slave =
            input_item_slave_New( uri, SLAVE_TYPE_AUDIO, SLAVE_PRIORITY_USER );
        free( uri );

        if( unlikely( p_slave == ((void*)0) ) )
            break;
        TAB_APPEND(i_slaves, pp_slaves, p_slave);
    }
    free( psz_org );

    *ppp_slaves = pp_slaves;
    *p_slaves = i_slaves;
}
