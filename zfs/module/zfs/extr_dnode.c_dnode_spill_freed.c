
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* dn_rm_spillblk; int dn_mtx; } ;
typedef TYPE_1__ dnode_t ;
typedef int boolean_t ;


 scalar_t__ DN_KILL_SPILLBLK ;
 int TXG_SIZE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static boolean_t
dnode_spill_freed(dnode_t *dn)
{
 int i;

 mutex_enter(&dn->dn_mtx);
 for (i = 0; i < TXG_SIZE; i++) {
  if (dn->dn_rm_spillblk[i] == DN_KILL_SPILLBLK)
   break;
 }
 mutex_exit(&dn->dn_mtx);
 return (i < TXG_SIZE);
}
