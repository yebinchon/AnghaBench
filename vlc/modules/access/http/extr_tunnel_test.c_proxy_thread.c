
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_CLOEXEC ;
 int accept4 (int,int *,int *,int ) ;
 int connection_count ;
 int proxy_client_process (int) ;
 int vlc_assert_unreachable () ;
 int vlc_close (int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *proxy_thread(void *data)
{
    int *lfd = data;

    for (;;)
    {
        int cfd = accept4(*lfd, ((void*)0), ((void*)0), SOCK_CLOEXEC);
        if (cfd == -1)
            continue;

        int canc = vlc_savecancel();
        proxy_client_process(cfd);
        vlc_close(cfd);
        connection_count++;
        vlc_restorecancel(canc);
    }
    vlc_assert_unreachable();
}
