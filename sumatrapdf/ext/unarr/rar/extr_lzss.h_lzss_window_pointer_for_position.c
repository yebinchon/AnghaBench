
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_4__ {int * window; } ;
typedef TYPE_1__ LZSS ;


 size_t lzss_offset_for_position (TYPE_1__*,int ) ;

__attribute__((used)) static inline uint8_t *lzss_window_pointer_for_position(LZSS *self, int64_t pos) { return &self->window[lzss_offset_for_position(self, pos)]; }
