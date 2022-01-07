
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int GetLastError () ;
 int MAX_PATH ;
 int UnmapViewOfFile (char const*) ;
 int map_file (char const*,char const**) ;
 int ok (int ,char*,char const*,int ) ;
 int run_test (char const*,int ,char const*,int ) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void run_from_file(const char *file_name)
{
    char out_name[MAX_PATH];
    const char *test_data, *out_data;
    DWORD test_size, out_size;

    test_size = map_file(file_name, &test_data);
    if(!test_size) {
        ok(0, "Could not map file %s: %u\n", file_name, GetLastError());
        return;
    }

    sprintf(out_name, "%s.exp", file_name);
    out_size = map_file(out_name, &out_data);
    if(!out_size) {
        ok(0, "Could not map file %s: %u\n", out_name, GetLastError());
        UnmapViewOfFile(test_data);
        return;
    }

    run_test(test_data, test_size, out_data, out_size);

    UnmapViewOfFile(test_data);
    UnmapViewOfFile(out_data);
}
