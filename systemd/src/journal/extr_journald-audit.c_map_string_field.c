
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;


 int map_string_field_internal (char const*,char const**,struct iovec**,size_t*,size_t*,int) ;

__attribute__((used)) static int map_string_field(const char *field, const char **p, struct iovec **iov, size_t *n_iov_allocated, size_t *n_iov) {
        return map_string_field_internal(field, p, iov, n_iov_allocated, n_iov, 0);
}
