
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int sout_access_out_t ;
struct TYPE_9__ {int force; } ;
struct TYPE_10__ {int pf_control; int pf_demux; void* p_sys; TYPE_1__ obj; } ;
typedef TYPE_2__ demux_t ;


 int Control ;
 int Demux ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_VAR_BOOL ;
 int free (char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int * sout_AccessOutNew (TYPE_2__*,char*,char*) ;
 int var_Create (TYPE_2__*,char*,int ) ;
 scalar_t__ var_InheritBool (TYPE_2__*,char*) ;
 char* var_InheritString (TYPE_2__*,char*) ;
 int var_SetBool (TYPE_2__*,char*,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;


    if( !p_demux->obj.force )
        return VLC_EGENERIC;

    char *access = var_InheritString( p_demux, "demuxdump-access" );
    if( access == ((void*)0) )
        return VLC_EGENERIC;


    var_Create( p_demux, "sout-file-append", VLC_VAR_BOOL );
    if( var_InheritBool( p_demux, "demuxdump-append" ) )
        var_SetBool( p_demux, "sout-file-append", 1 );

    var_Create( p_demux, "sout-file-format", VLC_VAR_BOOL );

    char *path = var_InheritString( p_demux, "demuxdump-file" );
    if( path == ((void*)0) )
    {
        free( access );
        msg_Err( p_demux, "no dump file name given" );
        return VLC_EGENERIC;
    }

    sout_access_out_t *out = sout_AccessOutNew( p_demux, access, path );
    free( path );
    free( access );
    if( out == ((void*)0) )
    {
        msg_Err( p_demux, "cannot create output" );
        return VLC_EGENERIC;
    }

    p_demux->p_sys = (void *)out;
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    return VLC_SUCCESS;
}
