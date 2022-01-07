
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ HINSTANCE ;


 scalar_t__ LoadLibraryW (char const*) ;
 scalar_t__ ieframe_instance ;

__attribute__((used)) static HINSTANCE get_ieframe_instance(void)
{
    static const WCHAR ieframe_dllW[] = {'i','e','f','r','a','m','e','.','d','l','l',0};

    if(!ieframe_instance)
        ieframe_instance = LoadLibraryW(ieframe_dllW);

    return ieframe_instance;
}
