
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int DeleteFileA (char*) ;
 int GetLastError () ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void delete_chm(void)
{
    BOOL ret;

    ret = DeleteFileA("test.chm");
    ok(ret, "DeleteFileA failed: %d\n", GetLastError());
}
