
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_condattr_t ;
typedef int libvlc_media_t ;
typedef int libvlc_media_player_t ;
typedef int libvlc_instance_t ;


 int CLOCK_MONOTONIC ;
 int LC_ALL ;
 int assert (int *) ;
 int cmdline (int,char const**,char const**,char**,char**,int*) ;
 int * create_libvlc () ;
 int free (char*) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int * libvlc_media_player_new_from_media (int *) ;
 int libvlc_media_player_play (int *) ;
 int libvlc_media_player_release (int *) ;
 int libvlc_media_player_stop_async (int *) ;
 int libvlc_media_release (int *) ;
 int libvlc_release (int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_condattr_destroy (int *) ;
 int pthread_condattr_init (int *) ;
 int pthread_condattr_setclock (int *,int ) ;
 int rename (char*,char*) ;
 int set_position (int *) ;
 int setlocale (int ,char*) ;
 int snapshot (int *,int,char*) ;
 int wait ;

int main(int argc, const char **argv)
{
    const char *in;
    char *out, *out_with_ext;
    int width;
    pthread_condattr_t attr;
    libvlc_instance_t *libvlc;
    libvlc_media_player_t *mp;
    libvlc_media_t *m;


    setlocale(LC_ALL, "");

    cmdline(argc, argv, &in, &out, &out_with_ext, &width);

    pthread_condattr_init(&attr);
    pthread_condattr_setclock(&attr, CLOCK_MONOTONIC);
    pthread_cond_init(&wait, &attr);
    pthread_condattr_destroy(&attr);


    libvlc = create_libvlc();
    assert(libvlc);

    m = libvlc_media_new_path(libvlc, in);
    assert(m);

    mp = libvlc_media_player_new_from_media(m);
    assert(mp);

    libvlc_media_player_play(mp);


    set_position(mp);
    snapshot(mp, width, out_with_ext);

    libvlc_media_player_stop_async(mp);


    if (out != out_with_ext) {
        rename(out_with_ext, out);
        free(out_with_ext);
    }
    free(out);

    libvlc_media_player_release(mp);
    libvlc_media_release(m);
    libvlc_release(libvlc);

    pthread_cond_destroy(&wait);

    return 0;
}
