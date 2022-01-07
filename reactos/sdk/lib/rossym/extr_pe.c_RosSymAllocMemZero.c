
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 void* RosSymAllocMem (int) ;
 int memset (void*,int ,int) ;

void *RosSymAllocMemZero(ulong size, ulong count) {
 void *res = RosSymAllocMem(size * count);
 if (res) memset(res, 0, size * count);
 return res;
}
