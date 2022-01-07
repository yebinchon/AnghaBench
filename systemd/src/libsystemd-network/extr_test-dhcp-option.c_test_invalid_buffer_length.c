
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DHCPMessage ;


 int EINVAL ;
 int assert_se (int) ;
 int dhcp_option_parse (int *,int,int *,int *,int *) ;

__attribute__((used)) static void test_invalid_buffer_length(void) {
        DHCPMessage message;

        assert_se(dhcp_option_parse(&message, 0, ((void*)0), ((void*)0), ((void*)0)) == -EINVAL);
        assert_se(dhcp_option_parse(&message, sizeof(DHCPMessage) - 1, ((void*)0), ((void*)0), ((void*)0)) == -EINVAL);
}
