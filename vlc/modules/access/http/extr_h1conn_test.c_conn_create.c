
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;


 int PF_LOCAL ;
 int assert (int) ;
 int * conn ;
 int * external_tls ;
 int * vlc_h1_conn_create (int *,int *,int) ;
 scalar_t__ vlc_tls_SocketPair (int ,int ,int **) ;

__attribute__((used)) static void conn_create(void)
{
    vlc_tls_t *tlsv[2];

    if (vlc_tls_SocketPair(PF_LOCAL, 0, tlsv))
        assert(!"vlc_tls_SocketPair");

    external_tls = tlsv[0];

    conn = vlc_h1_conn_create(((void*)0), tlsv[1], 0);
    assert(conn != ((void*)0));
}
