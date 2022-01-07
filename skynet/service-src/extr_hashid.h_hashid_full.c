
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashid {scalar_t__ count; scalar_t__ cap; } ;



__attribute__((used)) static inline int
hashid_full(struct hashid *hi) {
 return hi->count == hi->cap;
}
