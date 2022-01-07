
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BgwMessage ;


 int mq ;
 int * queue_remove (int ) ;

extern BgwMessage *
ts_bgw_message_receive(void)
{
 return queue_remove(mq);
}
