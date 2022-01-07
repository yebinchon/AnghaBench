
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemBitReader {int available; int at_eof; } ;


 scalar_t__ br_fill (struct MemBitReader*,int) ;

__attribute__((used)) static inline bool br_available(struct MemBitReader *br, int bits)
{
    return !br->at_eof && (bits <= br->available || br_fill(br, bits));
}
