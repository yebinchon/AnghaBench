
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int String; } ;
typedef TYPE_1__ StrArray ;


 int StrArrayClear (TYPE_1__*) ;
 int safe_free (int ) ;

void StrArrayDestroy(StrArray* arr)
{
 StrArrayClear(arr);
 if (arr != ((void*)0))
  safe_free(arr->String);
}
