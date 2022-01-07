
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int triple_timestamp ;
struct in6_addr {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int assert_se (int) ;
 scalar_t__ read (int,void*,size_t) ;
 int triple_timestamp_get (int *) ;

int icmp6_receive(int fd, void *iov_base, size_t iov_len,
                  struct in6_addr *dst, triple_timestamp *timestamp) {
        assert_se(read (fd, iov_base, iov_len) == (ssize_t)iov_len);

        if (timestamp)
                triple_timestamp_get(timestamp);

        return 0;
}
