
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unhexmem_full (char const*,size_t,int,void**,size_t*) ;

__attribute__((used)) static inline int unhexmem(const char *p, size_t l, void **mem, size_t *len) {
        return unhexmem_full(p, l, 0, mem, len);
}
