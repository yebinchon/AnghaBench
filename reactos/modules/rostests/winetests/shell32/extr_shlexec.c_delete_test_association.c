
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HKEY_CLASSES_ROOT ;
 int MAX_PATH ;
 int delete_test_class (char*) ;
 int myRegDeleteTreeA (int ,char const*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void delete_test_association(const char* extension)
{
    char classname[MAX_PATH];

    sprintf(classname, "shlexec%s", extension);
    delete_test_class(classname);
    myRegDeleteTreeA(HKEY_CLASSES_ROOT, extension);
}
