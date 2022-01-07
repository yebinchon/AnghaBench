
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int adns_state ;


 int addserver (int ,struct in_addr) ;

void adns_addserver(adns_state ads, struct in_addr addr) {
    addserver(ads, addr);
}
