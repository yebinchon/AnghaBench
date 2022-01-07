
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int LZSS ;


 scalar_t__ lzss_mask (int *) ;
 int lzss_size (int *) ;

__attribute__((used)) static inline int64_t lzss_next_window_edge_after_position(LZSS *self, int64_t pos) { return (pos + lzss_size(self)) & ~(int64_t)lzss_mask(self); }
