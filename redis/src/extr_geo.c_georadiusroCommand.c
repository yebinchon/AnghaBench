
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int RADIUS_COORDS ;
 int RADIUS_NOSTORE ;
 int georadiusGeneric (int *,int) ;

void georadiusroCommand(client *c) {
    georadiusGeneric(c, RADIUS_COORDS|RADIUS_NOSTORE);
}
