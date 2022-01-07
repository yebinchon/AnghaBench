
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32b ;
struct TYPE_8__ {int siaddr; int lease; int mask; int router; int ip; } ;
struct TYPE_6__ {int lease; int siaddr; int mask; int router; int ip; } ;
struct TYPE_7__ {scalar_t__ xid; TYPE_1__ data; int ltime; int available; struct TYPE_7__* next; } ;
typedef TYPE_2__ DHCPLIST ;
typedef TYPE_3__ DHCPLEASE ;


 int BUSY ;
 TYPE_2__* list ;

int confirm_lease( DHCPLEASE *dhcpl, u32b xid )
{
  int result = -1;
  DHCPLIST *temp;

  for( temp = list; temp; temp=temp->next )
    if( temp->xid == xid )
      {
 dhcpl->ip = temp->data.ip;
 dhcpl->router = temp->data.router;
 dhcpl->mask = temp->data.mask;
 dhcpl->lease = temp->data.lease;
 dhcpl->siaddr = temp->data.siaddr;
 temp->available = BUSY;
 temp->ltime = temp->data.lease;
 result = 0;
 return result;
      }
  return result;
}
