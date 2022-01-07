
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef scalar_t__ HKEY ;


 int GetLastError () ;
 scalar_t__ HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (scalar_t__) ;
 int RegOpenCurrentUser (int ,scalar_t__*) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void test_RegOpenCurrentUser(void)
{
    HKEY key;
    LONG ret;

    key = HKEY_CURRENT_USER;
    ret = RegOpenCurrentUser(KEY_READ, &key);
    ok(!ret, "got %d, error %d\n", ret, GetLastError());
    ok(key != HKEY_CURRENT_USER, "got %p\n", key);
    RegCloseKey(key);
}
