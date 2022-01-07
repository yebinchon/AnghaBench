
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int heap_free (int *) ;

__attribute__((used)) static void free_str(WCHAR *str)
{
    heap_free(str);
}
