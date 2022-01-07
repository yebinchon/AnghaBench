
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t bus_gvariant_determine_word_size(size_t sz, size_t extra) {
        if (sz + extra <= 0xFF)
                return 1;
        else if (sz + extra*2 <= 0xFFFF)
                return 2;
        else if (sz + extra*4 <= 0xFFFFFFFF)
                return 4;
        else
                return 8;
}
