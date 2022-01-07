
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int safe_atou16_full (char const*,int ,int *) ;

__attribute__((used)) static inline int safe_atou16(const char *s, uint16_t *ret) {
        return safe_atou16_full(s, 0, ret);
}
