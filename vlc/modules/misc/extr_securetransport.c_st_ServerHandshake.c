
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;


 int st_Handshake (int *,int *,int *,char**) ;

__attribute__((used)) static int st_ServerHandshake (vlc_tls_t *session, char **restrict alp) {

    return st_Handshake(session, ((void*)0), ((void*)0), alp);
}
