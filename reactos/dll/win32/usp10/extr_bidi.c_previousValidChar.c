
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;


 scalar_t__ const BN ;

__attribute__((used)) static inline int previousValidChar(const WORD *pcls, int index, int back_fence)
{
    if (index == -1 || index == back_fence) return index;
    index --;
    while (index > back_fence && pcls[index] == BN) index --;
    return index;
}
