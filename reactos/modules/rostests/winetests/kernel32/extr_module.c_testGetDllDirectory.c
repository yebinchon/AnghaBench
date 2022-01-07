
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dll_directories ;
typedef char WCHAR ;
typedef int DWORD ;
typedef char CHAR ;


 int MAX_PATH ;
 scalar_t__ broken (int) ;
 int cmpStrAW (char const*,char*,int,int) ;
 int ok (int,char*,int,...) ;
 int pGetDllDirectoryA (int,char*) ;
 int pGetDllDirectoryW (int,char*) ;
 int pSetDllDirectoryA (char const*) ;
 int skip (char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void testGetDllDirectory(void)
{
    CHAR bufferA[MAX_PATH];
    WCHAR bufferW[MAX_PATH];
    DWORD length, ret;
    int i;
    static const char *dll_directories[] =
    {
        "",
        "C:\\Some\\Path",
        "C:\\Some\\Path\\",
        "Q:\\A\\Long\\Path with spaces that\\probably\\doesn't exist!",
    };
    const int test_count = sizeof(dll_directories) / sizeof(dll_directories[0]);

    if (!pGetDllDirectoryA || !pGetDllDirectoryW)
    {
        win_skip("GetDllDirectory not available\n");
        return;
    }
    if (!pSetDllDirectoryA)
    {
        win_skip("SetDllDirectoryA not available\n");
        return;
    }

    for (i = 0; i < test_count; i++)
    {
        length = strlen(dll_directories[i]);
        if (!pSetDllDirectoryA(dll_directories[i]))
        {
            skip("i=%d, SetDllDirectoryA failed\n", i);
            continue;
        }


        ret = pGetDllDirectoryA(0, ((void*)0));
        ok(ret == length + 1, "Expected %u, got %u\n", length + 1, ret);

        ret = pGetDllDirectoryW(0, ((void*)0));
        ok(ret == length + 1, "Expected %u, got %u\n", length + 1, ret);


        bufferA[length] = 'A';
        bufferA[length + 1] = 'A';
        ret = pGetDllDirectoryA(length + 1, bufferA);
        ok(ret == length || broken(ret + 1 == length) ,
           "i=%d, Expected %u(+1), got %u\n", i, length, ret);
        ok(bufferA[length + 1] == 'A', "i=%d, Buffer overflow\n", i);
        ok(strcmp(bufferA, dll_directories[i]) == 0, "i=%d, Wrong path returned: '%s'\n", i, bufferA);

        bufferW[length] = 'A';
        bufferW[length + 1] = 'A';
        ret = pGetDllDirectoryW(length + 1, bufferW);
        ok(ret == length, "i=%d, Expected %u, got %u\n", i, length, ret);
        ok(bufferW[length + 1] == 'A', "i=%d, Buffer overflow\n", i);
        ok(cmpStrAW(dll_directories[i], bufferW, length, length),
           "i=%d, Wrong path returned: %s\n", i, wine_dbgstr_w(bufferW));



        bufferA[0] = 'A';
        ret = pGetDllDirectoryA(0, bufferA);
        ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);

        bufferW[0] = 'A';
        ret = pGetDllDirectoryW(0, bufferW);
        ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        ok(bufferW[0] == 0 ||
           broken(bufferW[0] == 'A'), "i=%d, Buffer overflow\n", i);


        bufferA[0] = 'A';
        ret = pGetDllDirectoryA(length, bufferA);
        ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        if (length != 0)
            ok(bufferA[0] == 0, "i=%d, Buffer not null terminated\n", i);

        bufferW[0] = 'A';
        ret = pGetDllDirectoryW(length, bufferW);
        ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        ok(bufferW[0] == 0 ||
           broken(bufferW[0] == 'A'), "i=%d, Buffer overflow\n", i);

        if (0)
        {


            ret = pGetDllDirectoryA(length, ((void*)0));
            ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);

            ret = pGetDllDirectoryW(length, ((void*)0));
            ok(ret == length + 1, "i=%d, Expected %u, got %u\n", i, length + 1, ret);
        }
    }


    pSetDllDirectoryA(((void*)0));
}
