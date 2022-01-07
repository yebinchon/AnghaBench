
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void uint_to_chars(unsigned int value, char* buf)
{

    int i;
    for (i = 3; i >= 0; i--) {
        buf[i] = (value & 0x000000ff);
        value = (value >> 8);
    }
    buf[4] = '\0';
}
