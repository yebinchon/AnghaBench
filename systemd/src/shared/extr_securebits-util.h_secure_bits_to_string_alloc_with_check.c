
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int secure_bits_is_valid (int) ;
 int secure_bits_to_string_alloc (int,char**) ;

__attribute__((used)) static inline int secure_bits_to_string_alloc_with_check(int n, char **s) {
        if (!secure_bits_is_valid(n))
                return -EINVAL;

        return secure_bits_to_string_alloc(n, s);
}
