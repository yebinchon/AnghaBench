
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq ;
 int queue_set_reader (int ) ;

extern void
ts_bgw_message_queue_set_reader(void)
{
 queue_set_reader(mq);
}
