
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SOCKET ;
typedef int BOOL ;


 int FIONBIO ;
 int ioctlsocket (int ,int ,int*) ;

__attribute__((used)) static int set_blocking ( SOCKET s, BOOL blocking )
{
    u_long val = !blocking;
    return ioctlsocket ( s, FIONBIO, &val );
}
