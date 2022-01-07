
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int LZSS ;


 int * lzss_window_pointer_for_position (int *,int ) ;

__attribute__((used)) static inline uint8_t lzss_get_byte_from_window(LZSS *self, int64_t pos) { return *lzss_window_pointer_for_position(self, pos); }
