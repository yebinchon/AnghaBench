
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static
uint16_t read16(uint8_t* arr, int pos, int swapBytes)
{
    uint8_t b1 = arr[pos];
    uint8_t b2 = arr[pos+1];

    return (swapBytes) ? ((b2 << 8) | b1) : ((b1 << 8) | b2);
}
