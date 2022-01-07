
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



uint16_t minutes_diff(uint16_t now, uint16_t prev) {
    if (now >= prev) return now-prev;
    return 65535-prev+now;
}
