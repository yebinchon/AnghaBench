
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long xmlChar ;



__attribute__((used)) static unsigned long
xmlDictComputeFastKey(const xmlChar *name, int namelen, int seed) {
    unsigned long value = seed;

    if (name == ((void*)0)) return(0);
    value = *name;
    value <<= 5;
    if (namelen > 10) {
        value += name[namelen - 1];
        namelen = 10;
    }
    switch (namelen) {
        case 10: value += name[9];

        case 9: value += name[8];

        case 8: value += name[7];

        case 7: value += name[6];

        case 6: value += name[5];

        case 5: value += name[4];

        case 4: value += name[3];

        case 3: value += name[2];

        case 2: value += name[1];

        default: break;
    }
    return(value);
}
