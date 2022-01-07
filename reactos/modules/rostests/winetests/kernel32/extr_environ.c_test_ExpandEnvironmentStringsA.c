
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf1 ;
typedef int buf ;
typedef int DWORD ;


 scalar_t__ ERROR_ENVVAR_NOT_FOUND ;
 int ExpandEnvironmentStringsA (char*,char*,int) ;
 scalar_t__ GetLastError () ;
 int GetWindowsDirectoryA (char*,int) ;
 int SetEnvironmentVariableA (char*,char const*) ;
 int lstrlenA (char const*) ;
 int ok (int,char*,...) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_ExpandEnvironmentStringsA(void)
{
    const char* value="Long long value";
    const char* not_an_env_var="%NotAnEnvVar%";
    char buf[256], buf1[256], buf2[0x8000];
    DWORD ret_size, ret_size1;

    SetEnvironmentVariableA("EnvVar", value);

    ret_size = ExpandEnvironmentStringsA(((void*)0), buf1, sizeof(buf1));
    ok(ret_size == 1 || ret_size == 0 || ret_size == 2 ,
       "ExpandEnvironmentStrings returned %d\n", ret_size);


    strcpy(buf, "%EnvVar%");
    ret_size = ExpandEnvironmentStringsA(buf, ((void*)0), 0);
    ok(ret_size == strlen(value)+1 ||
       ret_size == (strlen(value)+1)*2 ||
       ret_size == strlen(value)+2 ||
       ret_size == 0 ,
       "ExpandEnvironmentStrings returned %d instead of %d, %d or %d\n",
       ret_size, lstrlenA(value)+1, lstrlenA(value)+2, 0);


    ret_size = ExpandEnvironmentStringsA(buf, buf1, 0);

    ok(ret_size == strlen(value)+1 || ret_size == strlen(value)+2 ||
       ret_size == (strlen(value)+1)*2 ,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, lstrlenA(value)+1);


    ret_size = ExpandEnvironmentStringsA(buf, buf1, 12);

    ok(ret_size == strlen(value)+1 || ret_size == strlen(value)+2 ||
       ret_size == (strlen(value)+1)*2 ,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, lstrlenA(value)+1);



    ret_size = ExpandEnvironmentStringsA(buf, buf1, ret_size);
    ok(ret_size == strlen(value)+1 || ret_size == strlen(value)+2 ||
       ret_size == (strlen(value)+1)*2 ,
       "ExpandEnvironmentStrings returned %d instead of %d\n",
       ret_size, lstrlenA(value)+1);
    ok(!strcmp(buf1, value), "ExpandEnvironmentStrings returned [%s]\n", buf1);


    strcpy(buf, not_an_env_var);
    ret_size = ExpandEnvironmentStringsA(buf, buf1, sizeof(buf1));
    ok(ret_size == strlen(not_an_env_var)+1 ||
       ret_size == (strlen(not_an_env_var)+1)*2 ,
       "ExpandEnvironmentStrings returned %d instead of %d\n", ret_size, lstrlenA(not_an_env_var)+1);
    ok(!strcmp(buf1, not_an_env_var), "ExpandEnvironmentStrings returned [%s]\n", buf1);


    strcpy(buf, "12345");
    ret_size = ExpandEnvironmentStringsA(buf, buf2, sizeof(buf2));
    ok(!strcmp(buf, buf2), "ExpandEnvironmentStrings failed %s vs %s. ret_size = %d\n", buf, buf2, ret_size);

    ret_size1 = GetWindowsDirectoryA(buf1,256);
    ok ((ret_size1 >0) && (ret_size1<256), "GetWindowsDirectory Failed\n");
    ret_size = ExpandEnvironmentStringsA("%SystemRoot%",buf,sizeof(buf));
    if (ERROR_ENVVAR_NOT_FOUND != GetLastError())
    {
        ok(!strcmp(buf, buf1), "ExpandEnvironmentStrings failed %s vs %s. ret_size = %d\n", buf, buf1, ret_size);
    }


    SetEnvironmentVariableA("IndirectVar", "Foo%EnvVar%Bar");
    strcpy(buf, "Indirect-%IndirectVar%-Indirect");
    strcpy(buf2, "Indirect-Foo%EnvVar%Bar-Indirect");
    ret_size = ExpandEnvironmentStringsA(buf, buf1, sizeof(buf1));
    ok(ret_size == strlen(buf2)+1 ||
       ret_size == (strlen(buf2)+1)*2 ,
       "ExpandEnvironmentStrings returned %d instead of %d\n", ret_size, lstrlenA(buf2)+1);
    ok(!strcmp(buf1, buf2), "ExpandEnvironmentStrings returned [%s]\n", buf1);
    SetEnvironmentVariableA("IndirectVar", ((void*)0));

    SetEnvironmentVariableA("EnvVar", ((void*)0));
}
