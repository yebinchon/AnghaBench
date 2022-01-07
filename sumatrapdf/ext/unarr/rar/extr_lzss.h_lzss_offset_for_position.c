
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ LZSS ;



__attribute__((used)) static inline int lzss_offset_for_position(LZSS *self, int64_t pos) { return (int)(pos & self->mask); }
