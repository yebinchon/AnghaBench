
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIP_INT_IMM_MAX ;
 unsigned char ZIP_INT_IMM_MIN ;
 int panic (char*,unsigned char) ;

unsigned int zipIntSize(unsigned char encoding) {
    switch(encoding) {
    case 128: return 1;
    case 132: return 2;
    case 131: return 3;
    case 130: return 4;
    case 129: return 8;
    }
    if (encoding >= ZIP_INT_IMM_MIN && encoding <= ZIP_INT_IMM_MAX)
        return 0;
    panic("Invalid integer encoding 0x%02X", encoding);
    return 0;
}
