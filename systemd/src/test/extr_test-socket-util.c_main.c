
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_flush_accept () ;
 int test_getpeercred_getpeergroups () ;
 int test_ifname_valid () ;
 int test_in_addr_ifindex_from_string_auto () ;
 int test_in_addr_ifindex_to_string () ;
 int test_in_addr_is_multicast () ;
 int test_in_addr_is_null () ;
 int test_in_addr_prefix_intersect () ;
 int test_in_addr_prefix_next () ;
 int test_in_addr_to_string () ;
 int test_passfd_contents_read () ;
 int test_passfd_read () ;
 int test_receive_nopassfd () ;
 int test_send_emptydata () ;
 int test_send_nodata_nofd () ;
 int test_setup_logging (int ) ;
 int test_sockaddr_equal () ;
 int test_sockaddr_un_len () ;
 int test_socket_address_equal () ;
 int test_socket_address_get_path () ;
 int test_socket_address_is () ;
 int test_socket_address_is_netlink () ;
 int test_socket_address_parse () ;
 int test_socket_address_parse_netlink () ;
 int test_socket_print_unix () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_ifname_valid();

        test_socket_address_parse();
        test_socket_print_unix();
        test_socket_address_parse_netlink();
        test_socket_address_equal();
        test_socket_address_get_path();
        test_socket_address_is();
        test_socket_address_is_netlink();

        test_in_addr_is_null();
        test_in_addr_prefix_intersect();
        test_in_addr_prefix_next();
        test_in_addr_to_string();
        test_in_addr_ifindex_to_string();
        test_in_addr_ifindex_from_string_auto();

        test_sockaddr_equal();

        test_sockaddr_un_len();

        test_in_addr_is_multicast();

        test_getpeercred_getpeergroups();

        test_passfd_read();
        test_passfd_contents_read();
        test_receive_nopassfd();
        test_send_nodata_nofd();
        test_send_emptydata();
        test_flush_accept();

        return 0;
}
