
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int dummy; } ;


 int mevent_delete_event (struct mevent*,int) ;

int
mevent_delete_close(struct mevent *evp)
{

 return (mevent_delete_event(evp, 1));
}
