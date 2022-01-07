
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int external_tls ;
 int vlc_tls_Shutdown (int ,int) ;

__attribute__((used)) static void conn_shutdown(bool duplex)
{
    vlc_tls_Shutdown(external_tls, duplex);
}
