
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ LZSS ;



__attribute__((used)) static inline int lzss_size(LZSS *self) { return self->mask + 1; }
