
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int htonl (int) ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static const char *ntoa( DWORD ip )
{
    static char buffer[40];

    ip = htonl(ip);
    sprintf( buffer, "%u.%u.%u.%u", (ip >> 24) & 0xff, (ip >> 16) & 0xff, (ip >> 8) & 0xff, ip & 0xff );
    return buffer;
}
