
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; int iov_base; } ;


 int assert_se (int) ;
 scalar_t__ memcmp (char const*,int ,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void assert_iovec_entry(const struct iovec *iovec, const char* content) {
        assert_se(strlen(content) == iovec->iov_len);
        assert_se(memcmp(content, iovec->iov_base, iovec->iov_len) == 0);
}
