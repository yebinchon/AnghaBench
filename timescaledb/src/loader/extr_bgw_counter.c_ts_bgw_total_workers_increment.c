
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ts_bgw_total_workers_increment_by (int) ;

extern bool
ts_bgw_total_workers_increment()
{
 return ts_bgw_total_workers_increment_by(1);
}
