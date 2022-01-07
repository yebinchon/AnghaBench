
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ts_bgw_total_workers_decrement_by (int) ;

extern void
ts_bgw_total_workers_decrement()
{
 ts_bgw_total_workers_decrement_by(1);
}
