
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char hexchar(int x) {
        static const char table[16] = "0123456789abcdef";

        return table[x & 15];
}
