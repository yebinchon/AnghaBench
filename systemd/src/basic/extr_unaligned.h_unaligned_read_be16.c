
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int be16toh (int ) ;

__attribute__((used)) static inline uint16_t unaligned_read_be16(const void *_u) {
        const struct __attribute__((__packed__, __may_alias__)) { uint16_t x; } *u = _u;

        return be16toh(u->x);
}
