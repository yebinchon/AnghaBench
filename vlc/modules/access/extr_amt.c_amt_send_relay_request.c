
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int chaSendBuffer ;
struct TYPE_6__ {int sAMT; scalar_t__ glob_ulNonce; } ;
typedef TYPE_2__ access_sys_t ;


 char AMT_REQUEST ;
 int AMT_REQUEST_MSG_LEN ;
 int errno ;
 int memcpy (char*,scalar_t__*,int) ;
 int memset (char*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,char*,int ) ;
 int send (int ,char*,int,int ) ;
 int vlc_strerror (int ) ;

__attribute__((used)) static void amt_send_relay_request( stream_t *p_access, char *relay_ip )
{
    char chaSendBuffer[AMT_REQUEST_MSG_LEN];
    uint32_t ulNonce;
    int nRet;
    access_sys_t *sys = p_access->p_sys;

    memset( chaSendBuffer, 0, sizeof(chaSendBuffer) );

    ulNonce = 0;
    nRet = 0;
    chaSendBuffer[0] = AMT_REQUEST;
    chaSendBuffer[1] = 0;
    chaSendBuffer[2] = 0;
    chaSendBuffer[3] = 0;

    ulNonce = sys->glob_ulNonce;
    memcpy( &chaSendBuffer[4], &ulNonce, sizeof(uint32_t) );

    nRet = send( sys->sAMT, chaSendBuffer, sizeof(chaSendBuffer), 0 );

    if( nRet < 0 )
        msg_Err(p_access, "Error sending relay request to %s error: %s", relay_ip, vlc_strerror(errno) );
}
