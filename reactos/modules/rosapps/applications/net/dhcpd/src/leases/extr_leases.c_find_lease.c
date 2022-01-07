
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8b ;
typedef void* u32b ;
struct TYPE_9__ {int siaddr; int lease; int mask; int router; int ip; } ;
struct TYPE_7__ {int siaddr; int lease; int mask; int router; int ip; } ;
struct TYPE_8__ {scalar_t__ type; int available; int chaddr; void* ltime; void* xid; TYPE_1__ data; struct TYPE_8__* next; } ;
typedef TYPE_2__ DHCPLIST ;
typedef TYPE_3__ DHCPLEASE ;


 scalar_t__ DYNAMIC ;
 int FREE ;
 void* MAX_PROCESS_TIME ;
 void* PROCESSING ;
 scalar_t__ STATIC ;
 int fprintf (int ,char*) ;
 TYPE_2__* list ;
 int maccmp (int ,int *) ;
 int maccpy (int ,int *) ;
 int release_lease (TYPE_3__*,void*,int *) ;
 int stdout ;

int find_lease( DHCPLEASE *dhcpl, u32b xid, u8b chaddr[] )
{
  int result = -2;
  DHCPLIST *temp;

  if( !dhcpl )
    return -1;

  for( temp = list; temp; temp=temp->next )
    if( !maccmp( temp->chaddr, chaddr ) )
      release_lease( dhcpl, xid, chaddr);

  for( temp = list; temp; temp=temp->next )
    if( ( !maccmp( temp->chaddr, chaddr )) && ( temp->type == STATIC ))
      {
 dhcpl->ip = temp->data.ip;
 dhcpl->router = temp->data.router;
 dhcpl->mask = temp->data.mask;
 dhcpl->lease = temp->data.lease;
 dhcpl->siaddr = temp->data.siaddr;
 fprintf( stdout, "Assigning Static IP! \n");
 temp->available = PROCESSING;
 temp->xid = xid;
 temp->ltime = MAX_PROCESS_TIME;
 maccpy( temp->chaddr, chaddr);
 result = 0;
 return result;
      }
    else if( ( temp->available & FREE ) && ( temp->type == DYNAMIC ))
      {
 dhcpl->ip = temp->data.ip;
 dhcpl->router = temp->data.router;
 dhcpl->mask = temp->data.mask;
 dhcpl->lease = temp->data.lease;
 dhcpl->siaddr = temp->data.siaddr;
 fprintf( stdout, "Assigning Dynamic IP! \n");
 temp->available = PROCESSING;
 temp->xid = xid;
 temp->ltime = MAX_PROCESS_TIME;
 maccpy( temp->chaddr, chaddr);
 result = 0;
 return result;
      }
  return result;
}
