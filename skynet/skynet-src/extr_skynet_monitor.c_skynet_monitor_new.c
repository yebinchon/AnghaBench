
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_monitor {int dummy; } ;


 int memset (struct skynet_monitor*,int ,int) ;
 struct skynet_monitor* skynet_malloc (int) ;

struct skynet_monitor *
skynet_monitor_new() {
 struct skynet_monitor * ret = skynet_malloc(sizeof(*ret));
 memset(ret, 0, sizeof(*ret));
 return ret;
}
