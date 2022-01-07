
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; int * value; } ;


 int ARRAY_SIZE (int ) ;
 int heap_free (int *) ;
 TYPE_1__* rtfHashTable ;
 int rtfKey ;

void LookupCleanup(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rtfKey) * 2; i++)
 {
  heap_free( rtfHashTable[i].value );
  rtfHashTable[i].value = ((void*)0);
  rtfHashTable[i].count = 0;
 }
}
