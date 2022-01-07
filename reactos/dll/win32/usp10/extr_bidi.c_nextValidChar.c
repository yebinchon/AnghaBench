
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;


 scalar_t__ const BN ;

__attribute__((used)) static inline int nextValidChar(const WORD *pcls, int index, int front_fence)
{
    if (index == front_fence) return index;
    index ++;
    while (index < front_fence && pcls[index] == BN) index ++;
    return index;
}
