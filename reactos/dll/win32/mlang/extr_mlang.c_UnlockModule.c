
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedDecrement (int *) ;
 int dll_count ;

__attribute__((used)) static void UnlockModule(void)
{
    InterlockedDecrement(&dll_count);
}
