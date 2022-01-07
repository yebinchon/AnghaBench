
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; } ;



__attribute__((used)) static inline size_t IOVEC_TOTAL_SIZE(const struct iovec *i, size_t n) {
        size_t j, r = 0;

        for (j = 0; j < n; j++)
                r += i[j].iov_len;

        return r;
}
