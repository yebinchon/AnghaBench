
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_5__ {int * window; } ;
typedef TYPE_1__ LZSS ;


 int lzss_offset_for_position (TYPE_1__*,int ) ;
 int lzss_size (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void lzss_copy_bytes_from_window(LZSS *self, uint8_t *buffer, int64_t startpos, int length) {
    int windowoffs = lzss_offset_for_position(self, startpos);
    int firstpart = lzss_size(self) - windowoffs;
    if (length <= firstpart) {

        memcpy(buffer, &self->window[windowoffs], length);
    }
    else {

        memcpy(buffer, &self->window[windowoffs], firstpart);
        memcpy(buffer + firstpart, &self->window[0], length - firstpart);
    }
}
