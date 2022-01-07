
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UInt32 ;
typedef size_t CLzRef ;


 size_t kEmptyHashValue ;

void MatchFinder_Normalize3(UInt32 subValue, CLzRef *items, UInt32 numItems)
{
  UInt32 i;
  for (i = 0; i < numItems; i++)
  {
    UInt32 value = items[i];
    if (value <= subValue)
      value = kEmptyHashValue;
    else
      value -= subValue;
    items[i] = value;
  }
}
