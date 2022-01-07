
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct array {int nelem; } ;



__attribute__((used)) static inline uint32_t
array_n(const struct array *a)
{
    return a->nelem;
}
