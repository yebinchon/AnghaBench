
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSGSPEED_MAX ;
 int MSGSPEED_MIN ;
 int g_nMessageSpeed ;

int MessageSpeed()
{
 return (MSGSPEED_MAX-MSGSPEED_MIN) - (g_nMessageSpeed-MSGSPEED_MIN) + MSGSPEED_MIN;
}
