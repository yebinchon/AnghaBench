
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int position; int * window; } ;
typedef TYPE_1__ LZSS ;


 int lzss_current_window_offset (TYPE_1__*) ;
 int lzss_mask (TYPE_1__*) ;

__attribute__((used)) static inline void lzss_emit_match(LZSS *self, int offset, int length) {
    int windowoffs = lzss_current_window_offset(self);
    int i;
    for (i = 0; i < length; i++) {
        self->window[(windowoffs + i) & lzss_mask(self)] = self->window[(windowoffs + i - offset) & lzss_mask(self)];
    }
    self->position += length;
}
