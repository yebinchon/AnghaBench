
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int name ;
typedef int buffer ;
typedef int LSTATUS ;
typedef int HKEY ;
typedef size_t DWORD ;
typedef int BYTE ;


 int ERROR_MORE_DATA ;
 int ERROR_SUCCESS ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyA (int ,char*,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 int RegEnumValueA (int ,int ,char*,size_t*,int *,int *,int*,size_t*) ;
 int RegQueryValueExA (int ,char*,int *,int *,int*,size_t*) ;
 int RegSetValueExA (int ,char*,int ,int ,int*,size_t) ;
 int hkey_main ;
 scalar_t__ memcmp (int*,char const*,size_t) ;
 int memset (int*,int,int) ;
 int ok (int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int wine_debugstr_an (char*,size_t) ;

__attribute__((used)) static void test_string_termination(void)
{
    HKEY subkey;
    LSTATUS ret;
    static const char string[] = "FullString";
    char name[11];
    BYTE buffer[11];
    DWORD insize, outsize, nsize;

    ret = RegCreateKeyA(hkey_main, "string_termination", &subkey);
    ok(ret == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", ret);


    insize=sizeof(string)-1;
    ret = RegSetValueExA(subkey, "stringtest", 0, REG_SZ, (BYTE*)string, insize);
    ok(ret == ERROR_SUCCESS, "RegSetValueExA failed: %d\n", ret);
    outsize=insize;
    ret = RegQueryValueExA(subkey, "stringtest", ((void*)0), ((void*)0), buffer, &outsize);
    ok(ret == ERROR_MORE_DATA, "RegQueryValueExA returned: %d\n", ret);


    insize=sizeof(string)-2;
    ret = RegSetValueExA(subkey, "stringtest", 0, REG_SZ, (BYTE*)string, insize);
    ok(ret == ERROR_SUCCESS, "RegSetValueExA failed: %d\n", ret);
    outsize=0;
    ret = RegQueryValueExA(subkey, "stringtest", ((void*)0), ((void*)0), ((void*)0), &outsize);
    ok(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    ok(outsize == insize, "wrong size %u != %u\n", outsize, insize);


    outsize=insize;
    memset(buffer, 0xbd, sizeof(buffer));
    ret = RegQueryValueExA(subkey, "stringtest", ((void*)0), ((void*)0), buffer, &outsize);
    ok(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    ok(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    ok(memcmp(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       wine_debugstr_an((char*)buffer, outsize), outsize, string);
    ok(buffer[insize] == 0xbd, "buffer overflow at %u %02x\n", insize, buffer[insize]);


    outsize=insize+1;
    memset(buffer, 0xbd, sizeof(buffer));
    ret = RegQueryValueExA(subkey, "stringtest", ((void*)0), ((void*)0), buffer, &outsize);
    ok(ret == ERROR_SUCCESS, "RegQueryValueExA failed: %d\n", ret);
    ok(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    ok(memcmp(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       wine_debugstr_an((char*)buffer, outsize), outsize, string);
    ok(buffer[insize] == 0, "buffer overflow at %u %02x\n", insize, buffer[insize]);


    outsize=insize;
    memset(buffer, 0xbd, sizeof(buffer));
    nsize=sizeof(name);
    ret = RegEnumValueA(subkey, 0, name, &nsize, ((void*)0), ((void*)0), buffer, &outsize);
    ok(ret == ERROR_SUCCESS, "RegEnumValueA failed: %d\n", ret);
    ok(strcmp(name, "stringtest") == 0, "wrong name: %s\n", name);
    ok(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    ok(memcmp(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       wine_debugstr_an((char*)buffer, outsize), outsize, string);
    ok(buffer[insize] == 0xbd, "buffer overflow at %u %02x\n", insize, buffer[insize]);


    outsize=insize+1;
    memset(buffer, 0xbd, sizeof(buffer));
    nsize=sizeof(name);
    ret = RegEnumValueA(subkey, 0, name, &nsize, ((void*)0), ((void*)0), buffer, &outsize);
    ok(ret == ERROR_SUCCESS, "RegEnumValueA failed: %d\n", ret);
    ok(strcmp(name, "stringtest") == 0, "wrong name: %s\n", name);
    ok(outsize == insize, "wrong size: %u != %u\n", outsize, insize);
    ok(memcmp(buffer, string, outsize) == 0, "bad string: %s/%u != %s\n",
       wine_debugstr_an((char*)buffer, outsize), outsize, string);
    ok(buffer[insize] == 0, "buffer overflow at %u %02x\n", insize, buffer[insize]);

    RegDeleteKeyA(subkey, "");
    RegCloseKey(subkey);
}
