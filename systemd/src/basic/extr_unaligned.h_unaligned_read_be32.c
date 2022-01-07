
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int be32toh (int ) ;

__attribute__((used)) static inline uint32_t unaligned_read_be32(const void *_u) {
        const struct __attribute__((__packed__, __may_alias__)) { uint32_t x; } *u = _u;

        return be32toh(u->x);
}
