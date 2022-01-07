
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {size_t Index; int * String; } ;
typedef TYPE_1__ StrArray ;


 scalar_t__ strcmp (int ,char const*) ;

int32_t StrArrayFind(StrArray* arr, const char* str)
{
 uint32_t i;
 if ((str == ((void*)0)) || (arr == ((void*)0)) || (arr->String == ((void*)0)))
  return -1;
 for (i = 0; i<arr->Index; i++) {
  if (strcmp(arr->String[i], str) == 0)
   return (int32_t)i;
 }
 return -1;
}
