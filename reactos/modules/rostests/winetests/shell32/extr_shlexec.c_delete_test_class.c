
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HKEY_CLASSES_ROOT ;
 int myRegDeleteTreeA (int ,char const*) ;

__attribute__((used)) static void delete_test_class(const char* classname)
{
    myRegDeleteTreeA(HKEY_CLASSES_ROOT, classname);
}
