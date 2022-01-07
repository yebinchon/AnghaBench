
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline void SetSDR1( int sdr ) {
    int i,j;
    __asm__("mtsdr1 3");
    __asm__("sync");
    __asm__("isync");

    for( i = 0; i < 256; i++ ) {
 j = i << 12;
 __asm__("tlbie %0,0" : : "r" (j));
    }
    __asm__("eieio");
    __asm__("tlbsync");
    __asm__("ptesync");
}
