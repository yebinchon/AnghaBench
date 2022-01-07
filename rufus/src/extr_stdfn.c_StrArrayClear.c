
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t Index; int * String; } ;
typedef TYPE_1__ StrArray ;


 int safe_free (int ) ;

void StrArrayClear(StrArray* arr)
{
 uint32_t i;
 if ((arr == ((void*)0)) || (arr->String == ((void*)0)))
  return;
 for (i=0; i<arr->Index; i++) {
  safe_free(arr->String[i]);
 }
 arr->Index = 0;
}
