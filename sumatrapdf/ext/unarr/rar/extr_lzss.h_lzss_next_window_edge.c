
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int position; } ;
typedef TYPE_1__ LZSS ;


 int lzss_next_window_edge_after_position (TYPE_1__*,int ) ;

__attribute__((used)) static inline int64_t lzss_next_window_edge(LZSS *self) { return lzss_next_window_edge_after_position(self, self->position); }
