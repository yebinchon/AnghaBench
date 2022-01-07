
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short MapCtypeMask (unsigned short) ;

__attribute__((used)) static void MapCtypeMasks(unsigned short *cur, unsigned short *end) {
  for (; cur != end; ++cur) {
    *cur = MapCtypeMask(*cur);
  }
}
