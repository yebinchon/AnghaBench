
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; scalar_t__ position; int window; } ;
typedef TYPE_1__ LZSS ;


 int lzss_size (TYPE_1__*) ;
 int malloc (int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static inline bool lzss_initialize(LZSS *self, int windowsize) {
    self->window = malloc(windowsize);
    if (!self->window)
        return 0;

    self->mask = windowsize - 1;
    memset(self->window, 0, lzss_size(self));
    self->position = 0;
    return 1;
}
