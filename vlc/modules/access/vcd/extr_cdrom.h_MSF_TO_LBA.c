
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int MSF_TO_LBA(uint8_t min, uint8_t sec, uint8_t frame)
{
    return (int)(frame + 75 * (sec + 60 * min));
}
