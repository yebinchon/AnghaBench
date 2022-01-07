
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
typedef int sd_device ;
typedef int Network ;
typedef int Manager ;


 int ENOENT ;
 struct ether_addr ETHER_ADDR_NULL ;
 int assert_se (int) ;
 int network_get (int *,int *,char*,struct ether_addr const*,int ,int *,int *,int **) ;

__attribute__((used)) static void test_network_get(Manager *manager, sd_device *loopback) {
        Network *network;
        const struct ether_addr mac = ETHER_ADDR_NULL;



        assert_se(network_get(manager, loopback, "lo", &mac, 0, ((void*)0), ((void*)0), &network) == -ENOENT);
        assert_se(!network);
}
