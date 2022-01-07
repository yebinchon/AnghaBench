
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DHCPMessage {int xid; } ;


 int DHCP_DISCOVER ;
 int assert_se (int) ;
 int be32toh (int ) ;
 int check_options ;
 int dhcp_option_parse (struct DHCPMessage*,size_t,int ,int *,int *) ;
 int printf (char*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static int test_discover_message_verify(size_t size, struct DHCPMessage *dhcp) {
        int res;

        res = dhcp_option_parse(dhcp, size, check_options, ((void*)0), ((void*)0));
        assert_se(res == DHCP_DISCOVER);

        if (verbose)
                printf("  recv DHCP Discover 0x%08x\n", be32toh(dhcp->xid));

        return 0;
}
