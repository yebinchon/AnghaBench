
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SPT_MIN (size_t,size_t) ;

__attribute__((used)) static inline size_t spt_min(size_t a, size_t b) {
 return SPT_MIN(a, b);
}
