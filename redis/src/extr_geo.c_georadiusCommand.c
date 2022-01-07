
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int RADIUS_COORDS ;
 int georadiusGeneric (int *,int ) ;

void georadiusCommand(client *c) {
    georadiusGeneric(c, RADIUS_COORDS);
}
