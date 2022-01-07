
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulNonce ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int chaSendBuffer ;
struct TYPE_6__ {unsigned int glob_ulNonce; int relayDiscoAddr; int sAMT; } ;
typedef TYPE_2__ access_sys_t ;


 int AMT_DISCO_MSG_LEN ;
 char AMT_RELAY_DISCO ;
 int errno ;
 unsigned int htonl (int ) ;
 int memcpy (char*,unsigned int*,int) ;
 int memset (char*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,char*,int ) ;
 int rand () ;
 int sendto (int ,char*,int,int ,struct sockaddr*,int) ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void amt_send_relay_discovery_msg( stream_t *p_access, char *relay_ip )
{
    char chaSendBuffer[AMT_DISCO_MSG_LEN];
    unsigned int ulNonce;
    int nRet;
    access_sys_t *sys = p_access->p_sys;


    memset( chaSendBuffer, 0, sizeof(chaSendBuffer) );
    ulNonce = 0;
    nRet = 0;
    chaSendBuffer[0] = AMT_RELAY_DISCO;
    chaSendBuffer[1] = 0;
    chaSendBuffer[2] = 0;
    chaSendBuffer[3] = 0;


    srand( (unsigned int)time(((void*)0)) );
    ulNonce = htonl( rand() );
    memcpy( &chaSendBuffer[4], &ulNonce, sizeof(ulNonce) );
    sys->glob_ulNonce = ulNonce;


    nRet = sendto( sys->sAMT, chaSendBuffer, sizeof(chaSendBuffer), 0, (struct sockaddr *)&sys->relayDiscoAddr, sizeof(struct sockaddr) );


    if( nRet < 0)
        msg_Err( p_access, "Sendto failed to %s with error %d.", relay_ip, errno);
}
