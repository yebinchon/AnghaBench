
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {char** String; size_t Index; size_t Max; } ;
typedef TYPE_1__ StrArray ;
typedef scalar_t__ BOOL ;


 int free (char**) ;
 scalar_t__ realloc (char**,int) ;
 char* safe_strdup (char const*) ;
 int uprintf (char*) ;

int32_t StrArrayAdd(StrArray* arr, const char* str, BOOL duplicate)
{
 char** old_table;
 if ((arr == ((void*)0)) || (arr->String == ((void*)0)) || (str == ((void*)0)))
  return -1;
 if (arr->Index == arr->Max) {
  arr->Max *= 2;
  old_table = arr->String;
  arr->String = (char**)realloc(arr->String, arr->Max*sizeof(char*));
  if (arr->String == ((void*)0)) {
   free(old_table);
   uprintf("Could not reallocate string array\n");
   return -1;
  }
 }
 arr->String[arr->Index] = (duplicate)?safe_strdup(str):(char*)str;
 if (arr->String[arr->Index] == ((void*)0)) {
  uprintf("Could not store string in array\n");
  return -1;
 }
 return arr->Index++;
}
