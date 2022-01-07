
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 scalar_t__ RegDeleteKeyA (int ,char*) ;
 int ok (int,char*,char*,scalar_t__) ;

__attribute__((used)) static void ok_registry(BOOL expectsuccess)
{
    LONG ret;


    ret = RegDeleteKeyA(HKEY_CURRENT_USER, "Software\\Wine\\setupapitest");
    ok((expectsuccess && ret == ERROR_SUCCESS) ||
       (!expectsuccess && ret == ERROR_FILE_NOT_FOUND),
       "Expected registry key Software\\Wine\\setupapitest to %s, RegDeleteKey returned %d\n",
       expectsuccess ? "exist" : "not exist",
       ret);
}
