
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;
typedef int snd_pcm_t ;


 int poll (struct pollfd*,int,int) ;
 int snd_pcm_poll_descriptors (int *,struct pollfd*,int) ;
 int snd_pcm_poll_descriptors_count (int *) ;
 int snd_pcm_poll_descriptors_revents (int *,struct pollfd*,int,unsigned short*) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void Poll (snd_pcm_t *pcm, int canc)
{
    int n = snd_pcm_poll_descriptors_count (pcm);
    struct pollfd ufd[n];
    unsigned short revents;

    snd_pcm_poll_descriptors (pcm, ufd, n);
    do
    {
        vlc_restorecancel (canc);
        while (poll (ufd, n, -1) == -1);
        canc = vlc_savecancel ();
        snd_pcm_poll_descriptors_revents (pcm, ufd, n, &revents);
    }
    while (!revents);
}
