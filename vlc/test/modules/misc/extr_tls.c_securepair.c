
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int vlc_thread_t ;


 int PF_LOCAL ;
 int VLC_THREAD_PRIORITY_LOW ;
 int assert (int) ;
 int client_creds ;
 int server_creds ;
 int tls_echo ;
 int vlc_clone (int *,int ,int *,int ) ;
 int vlc_join (int ,int *) ;
 int * vlc_tls_ClientSessionCreate (int ,int *,char*,char*,char const* const*,char**) ;
 int * vlc_tls_ServerSessionCreate (int ,int *,char const* const*) ;
 int vlc_tls_SessionDelete (int *) ;
 int vlc_tls_SocketPair (int ,int ,int **) ;

__attribute__((used)) static vlc_tls_t *securepair(vlc_thread_t *th,
                             const char *const salpnv[],
                             const char *const calpnv[],
                             char **restrict alp)
{
    vlc_tls_t *socks[2];
    vlc_tls_t *server, *client;
    int val;

    val = vlc_tls_SocketPair(PF_LOCAL, 0, socks);
    assert(val == 0);

    server = vlc_tls_ServerSessionCreate(server_creds, socks[0], salpnv);
    assert(server != ((void*)0));

    val = vlc_clone(th, tls_echo, server, VLC_THREAD_PRIORITY_LOW);
    assert(val == 0);

    client = vlc_tls_ClientSessionCreate(client_creds, socks[1],
                                         "localhost", "vlc-tls-test",
                                         calpnv, alp);
    if (client == ((void*)0))
    {
        vlc_tls_SessionDelete(socks[1]);
        vlc_join(*th, ((void*)0));
        return ((void*)0);
    }
    return client;
}
