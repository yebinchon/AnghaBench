
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {char* psz_access; char* psz_path; int * p_module; int * pf_control; int * pf_write; int * pf_read; int * pf_seek; int * p_sys; int p_cfg; } ;
typedef TYPE_1__ sout_access_out_t ;


 char* config_ChainCreate (char**,int *,char const*) ;
 int free (char*) ;
 int * module_need (TYPE_1__*,char*,char*,int) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

sout_access_out_t *sout_AccessOutNew( vlc_object_t *p_sout,
                                      const char *psz_access, const char *psz_name )
{
    sout_access_out_t *p_access;
    char *psz_next;

    p_access = vlc_custom_create( p_sout, sizeof( *p_access ), "access out" );
    if( !p_access )
        return ((void*)0);

    psz_next = config_ChainCreate( &p_access->psz_access, &p_access->p_cfg,
                                   psz_access );
    free( psz_next );
    p_access->psz_path = strdup( psz_name ? psz_name : "" );
    if( unlikely(p_access->psz_path == ((void*)0)) )
        goto error;
    p_access->p_sys = ((void*)0);
    p_access->pf_seek = ((void*)0);
    p_access->pf_read = ((void*)0);
    p_access->pf_write = ((void*)0);
    p_access->pf_control = ((void*)0);
    p_access->p_module = ((void*)0);

    p_access->p_module =
        module_need( p_access, "sout access", p_access->psz_access, 1 );

    if( !p_access->p_module )
    {
        free( p_access->psz_path );
error:
        free( p_access->psz_access );
        vlc_object_delete(p_access);
        return( ((void*)0) );
    }

    return p_access;
}
