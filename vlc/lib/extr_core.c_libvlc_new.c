
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_5__ {int ref_count; int instance_lock; int * p_callback_list; int * p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int free (TYPE_1__*) ;
 int * libvlc_InternalCreate () ;
 int libvlc_InternalDestroy (int *) ;
 scalar_t__ libvlc_InternalInit (int *,int,char const**) ;
 int libvlc_threads_deinit () ;
 int libvlc_threads_init () ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

libvlc_instance_t * libvlc_new( int argc, const char *const *argv )
{
    libvlc_threads_init ();

    libvlc_instance_t *p_new = malloc (sizeof (*p_new));
    if (unlikely(p_new == ((void*)0)))
        return ((void*)0);

    const char *my_argv[argc + 2];
    my_argv[0] = "libvlc";
    for( int i = 0; i < argc; i++ )
         my_argv[i + 1] = argv[i];
    my_argv[argc + 1] = ((void*)0);

    libvlc_int_t *p_libvlc_int = libvlc_InternalCreate();
    if (unlikely (p_libvlc_int == ((void*)0)))
        goto error;

    if (libvlc_InternalInit( p_libvlc_int, argc + 1, my_argv ))
    {
        libvlc_InternalDestroy( p_libvlc_int );
        goto error;
    }

    p_new->p_libvlc_int = p_libvlc_int;
    p_new->ref_count = 1;
    p_new->p_callback_list = ((void*)0);
    vlc_mutex_init(&p_new->instance_lock);
    return p_new;

error:
    free (p_new);
    libvlc_threads_deinit ();
    return ((void*)0);
}
