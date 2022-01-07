
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tv ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int socket; } ;
typedef TYPE_1__ netconn_t ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_SUCCESS ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int WARN (char*,int ) ;
 int errno ;
 int setsockopt (int ,int ,int ,void*,int) ;
 int sock_get_error (int ) ;
 int strerror (int ) ;

DWORD netconn_set_timeout( netconn_t *netconn, BOOL send, int value )
{
    struct timeval tv;


    tv.tv_sec = value / 1000;
    tv.tv_usec = (value % 1000) * 1000;

    if (setsockopt( netconn->socket, SOL_SOCKET, send ? SO_SNDTIMEO : SO_RCVTIMEO, (void*)&tv, sizeof(tv) ) == -1)
    {
        WARN("setsockopt failed (%s)\n", strerror( errno ));
        return sock_get_error( errno );
    }
    return ERROR_SUCCESS;
}
