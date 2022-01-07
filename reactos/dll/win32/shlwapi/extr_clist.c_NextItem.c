
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; } ;
typedef TYPE_1__* LPDBLIST ;
typedef int LPDATABLOCK_HEADER ;



__attribute__((used)) static inline LPDATABLOCK_HEADER NextItem(LPDBLIST lpList)
{
  char* address = (char*)lpList;
  address += lpList->cbSize;
  return (LPDATABLOCK_HEADER)address;
}
