
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int position; } ;
typedef TYPE_1__ LZSS ;


 int * lzss_current_window_pointer (TYPE_1__*) ;

__attribute__((used)) static inline void lzss_emit_literal(LZSS *self, uint8_t literal) {

    *lzss_current_window_pointer(self) = literal;
    self->position++;
}
