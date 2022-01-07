
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int s_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct ip_mreq {TYPE_4__ imr_interface; TYPE_1__ imr_multiaddr; } ;
struct TYPE_12__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ stream_t ;
typedef int imr ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {TYPE_2__ sin_addr; } ;
struct TYPE_13__ {int sAMT; TYPE_3__ mcastGroupAddr; } ;
typedef TYPE_6__ access_sys_t ;


 int INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_DROP_MEMBERSHIP ;
 int setsockopt (int ,int ,int ,char*,int) ;

__attribute__((used)) static int amt_leaveASM_group( stream_t *p_access )
{
    struct ip_mreq imr;
    access_sys_t *sys = p_access->p_sys;

    imr.imr_multiaddr.s_addr = sys->mcastGroupAddr.sin_addr.s_addr;
    imr.imr_interface.s_addr = INADDR_ANY;

    return setsockopt( sys->sAMT, IPPROTO_IP, IP_DROP_MEMBERSHIP, (char *)&imr, sizeof(imr) );
}
