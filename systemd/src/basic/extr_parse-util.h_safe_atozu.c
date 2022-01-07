
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_cc (int) ;
 int safe_atolu (char const*,size_t*) ;

__attribute__((used)) static inline int safe_atozu(const char *s, size_t *ret_u) {
        assert_cc(sizeof(size_t) == sizeof(long unsigned));
        return safe_atolu(s, ret_u);
}
