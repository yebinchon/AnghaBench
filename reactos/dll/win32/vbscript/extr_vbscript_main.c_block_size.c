
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int MIN_BLOCK_SIZE ;

__attribute__((used)) static inline DWORD block_size(DWORD block)
{
    return MIN_BLOCK_SIZE << block;
}
