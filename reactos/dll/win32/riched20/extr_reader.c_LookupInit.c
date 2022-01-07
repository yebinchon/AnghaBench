
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int count; TYPE_1__** value; } ;
struct TYPE_9__ {int rtfKHash; int * rtfKStr; } ;
typedef TYPE_1__ RTFKey ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int Hash (int *) ;
 TYPE_1__** heap_alloc (int) ;
 TYPE_1__** heap_realloc (TYPE_1__**,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__* rtfHashTable ;
 TYPE_1__* rtfKey ;

void LookupInit(void)
{
 RTFKey *rp;

 memset(rtfHashTable, 0, sizeof rtfHashTable);
 for (rp = rtfKey; rp->rtfKStr != ((void*)0); rp++)
 {
  int index;

  rp->rtfKHash = Hash (rp->rtfKStr);
  index = rp->rtfKHash % (ARRAY_SIZE(rtfKey) * 2);
  if (!rtfHashTable[index].count)
   rtfHashTable[index].value = heap_alloc(sizeof(RTFKey *));
  else
   rtfHashTable[index].value = heap_realloc(rtfHashTable[index].value, sizeof(RTFKey *) * (rtfHashTable[index].count + 1));
  rtfHashTable[index].value[rtfHashTable[index].count++] = rp;
 }
}
