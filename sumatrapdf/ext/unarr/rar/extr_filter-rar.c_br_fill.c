
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemBitReader {int available; scalar_t__ offset; scalar_t__ length; int bits; int* bytes; int at_eof; } ;



__attribute__((used)) static bool br_fill(struct MemBitReader *br, int bits)
{
    while (br->available < bits && br->offset < br->length) {
        br->bits = (br->bits << 8) | br->bytes[br->offset++];
        br->available += 8;
    }
    if (bits > br->available) {
        br->at_eof = 1;
        return 0;
    }
    return 1;
}
