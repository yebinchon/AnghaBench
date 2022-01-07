
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MessageQueue ;


 int BGW_MQ_TRANCHE_NAME ;
 int RequestAddinShmemSpace (int) ;
 int RequestNamedLWLockTranche (int ,int) ;

extern void
ts_bgw_message_queue_alloc(void)
{
 RequestAddinShmemSpace(sizeof(MessageQueue));
 RequestNamedLWLockTranche(BGW_MQ_TRANCHE_NAME, 1);
}
