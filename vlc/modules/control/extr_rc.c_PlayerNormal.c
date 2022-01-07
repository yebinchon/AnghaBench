
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;


 int PlayerDoNormal ;
 int PlayerDoVoid (int *,int ) ;

__attribute__((used)) static void PlayerNormal(intf_thread_t *intf)
{
    PlayerDoVoid(intf, PlayerDoNormal);
}
