
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; int catname_to_submedialist; int * p_sd; TYPE_3__* p_mlist; int * p_libvlc_instance; } ;
typedef TYPE_1__ libvlc_media_discoverer_t ;
typedef int libvlc_instance_t ;
struct TYPE_6__ {int b_read_only; } ;


 TYPE_3__* libvlc_media_list_new (int *) ;
 int libvlc_printerr (char*) ;
 int libvlc_retain (int *) ;
 TYPE_1__* malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_dictionary_init (int *,int ) ;

libvlc_media_discoverer_t *
libvlc_media_discoverer_new( libvlc_instance_t * p_inst, const char * psz_name )
{

    if( !strncasecmp( psz_name, "podcast", 7 ) )
        return ((void*)0);

    libvlc_media_discoverer_t *p_mdis;

    p_mdis = malloc(sizeof(*p_mdis) + strlen(psz_name) + 1);
    if( unlikely(p_mdis == ((void*)0)) )
    {
        libvlc_printerr( "Not enough memory" );
        return ((void*)0);
    }

    p_mdis->p_libvlc_instance = p_inst;
    p_mdis->p_mlist = libvlc_media_list_new( p_inst );
    p_mdis->p_mlist->b_read_only = 1;
    p_mdis->p_sd = ((void*)0);

    vlc_dictionary_init( &p_mdis->catname_to_submedialist, 0 );

    libvlc_retain( p_inst );
    strcpy( p_mdis->name, psz_name );
    return p_mdis;
}
