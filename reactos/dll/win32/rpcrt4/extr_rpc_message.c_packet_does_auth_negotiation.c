
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptype; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
typedef TYPE_2__ RpcPktHdr ;
typedef int BOOL ;


 int FALSE ;





 int TRUE ;

__attribute__((used)) static BOOL packet_does_auth_negotiation(const RpcPktHdr *Header)
{
    switch (Header->common.ptype)
    {
    case 129:
    case 128:
    case 130:
    case 132:
    case 131:
        return TRUE;
    default:
        return FALSE;
    }
}
