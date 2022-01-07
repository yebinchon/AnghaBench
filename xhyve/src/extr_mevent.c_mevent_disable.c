
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int dummy; } ;


 int MEV_DISABLE ;
 int mevent_update (struct mevent*,int ) ;

int
mevent_disable(struct mevent *evp)
{

 return (mevent_update(evp, MEV_DISABLE));
}
