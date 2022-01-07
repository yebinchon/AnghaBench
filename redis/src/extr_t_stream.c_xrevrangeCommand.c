
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int xrangeGenericCommand (int *,int) ;

void xrevrangeCommand(client *c) {
    xrangeGenericCommand(c,1);
}
