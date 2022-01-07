
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ai_family; int ai_addrlen; int ai_addr; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; int sin_family; struct sockaddr_storage sin_addr; } ;
struct hostent {int h_addrtype; int h_length; int h_addr; } ;
struct addrinfo {int ai_family; int ai_addrlen; int ai_addr; } ;
typedef int WCHAR ;
typedef int INTERNET_PORT ;
typedef int DWORD ;




 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int ERROR_WINHTTP_NAME_NOT_RESOLVED ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int ,int ) ;
 int cs_gethostbyname ;
 int debugstr_w (int const*) ;
 int freeaddrinfo (struct sockaddr_storage*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct sockaddr_storage*,struct sockaddr_storage**) ;
 struct hostent* gethostbyname (char*) ;
 int h_errno ;
 int heap_free (char*) ;
 void* htons (int ) ;
 int memcpy (struct sockaddr_storage*,int ,int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 char* strdupWA (int const*) ;

__attribute__((used)) static DWORD resolve_hostname( const WCHAR *hostnameW, INTERNET_PORT port, struct sockaddr_storage *sa )
{
    char *hostname;




    struct hostent *he;
    struct sockaddr_in *sin = (struct sockaddr_in *)sa;


    if (!(hostname = strdupWA( hostnameW ))) return ERROR_OUTOFMEMORY;
    EnterCriticalSection( &cs_gethostbyname );

    he = gethostbyname( hostname );
    heap_free( hostname );
    if (!he)
    {
        TRACE("failed to get address of %s (%d)\n", debugstr_w(hostnameW), h_errno);
        LeaveCriticalSection( &cs_gethostbyname );
        return ERROR_WINHTTP_NAME_NOT_RESOLVED;
    }
    memset( sa, 0, sizeof(struct sockaddr_in) );
    memcpy( &sin->sin_addr, he->h_addr, he->h_length );
    sin->sin_family = he->h_addrtype;
    sin->sin_port = htons( port );

    LeaveCriticalSection( &cs_gethostbyname );
    return ERROR_SUCCESS;

}
