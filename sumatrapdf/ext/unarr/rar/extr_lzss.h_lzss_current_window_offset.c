
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int position; } ;
typedef TYPE_1__ LZSS ;


 int lzss_offset_for_position (TYPE_1__*,int ) ;

__attribute__((used)) static inline int lzss_current_window_offset(LZSS *self) { return lzss_offset_for_position(self, self->position); }
