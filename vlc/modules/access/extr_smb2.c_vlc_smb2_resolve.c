
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in_addr {int dummy; } ;
struct addrinfo {int dummy; } ;
typedef int stream_t ;
typedef int netbios_ns ;
typedef int ip ;


 int AF_INET ;
 int NETBIOS_FILESERVER ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ inet_ntop (int ,int *,char*,int) ;
 int inet_pton (int ,char const*,struct in_addr*) ;
 int netbios_ns_destroy (int *) ;
 int * netbios_ns_new () ;
 scalar_t__ netbios_ns_resolve (int *,char const*,int ,int *) ;
 char* strdup (char*) ;
 scalar_t__ vlc_getaddrinfo_i11e (char const*,unsigned int,int *,struct addrinfo**) ;

__attribute__((used)) static char *
vlc_smb2_resolve(stream_t *access, const char *host, unsigned port)
{
    (void) access;
    if (!host)
        return ((void*)0);
    (void) port;
    return ((void*)0);

}
