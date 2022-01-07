
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8b ;
typedef int u32b ;
struct TYPE_3__ {int* chaddr; scalar_t__ xid; int available; struct TYPE_3__* next; } ;
typedef TYPE_1__ DHCPLIST ;
typedef int DHCPLEASE ;


 int FREE ;
 int fprintf (int ,char*,int,int,int,int,int,int) ;
 TYPE_1__* list ;
 int maccmp (int*,scalar_t__*) ;
 int stdout ;

int release_lease( DHCPLEASE *dhcpl, u32b xid, u8b chaddr[16] )
{
  int result = -1, i;
  DHCPLIST *temp;
  u8b nchaddr[16];

  for( i = 0; i < 16; i++ )
    nchaddr[i] = 0;

  if( !dhcpl )
    return -1;

  for( temp = list; temp; temp=temp->next )
    if( !maccmp( temp->chaddr, chaddr ) )
      {

 result = 0;
 fprintf( stdout, "Deleting %X::%X::%X::%X::%X::%X \n", temp->chaddr[0], temp->chaddr[1], temp->chaddr[2], temp->chaddr[3], temp->chaddr[4], temp->chaddr[5] );
 temp->available = FREE;
 temp->xid = 0;

      } else {

 result = -1;
      }

  return result;
}
