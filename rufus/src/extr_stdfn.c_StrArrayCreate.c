
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {char** String; int Max; scalar_t__ Index; } ;
typedef TYPE_1__ StrArray ;


 scalar_t__ calloc (int ,int) ;
 int uprintf (char*) ;

void StrArrayCreate(StrArray* arr, uint32_t initial_size)
{
 if (arr == ((void*)0)) return;
 arr->Max = initial_size; arr->Index = 0;
 arr->String = (char**)calloc(arr->Max, sizeof(char*));
 if (arr->String == ((void*)0))
  uprintf("Could not allocate string array\n");
}
