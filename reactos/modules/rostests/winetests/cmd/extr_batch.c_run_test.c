
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef scalar_t__ DWORD ;


 int DeleteFileA (char*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int UnmapViewOfFile (char const*) ;
 char* convert_input_data (char const*,scalar_t__,scalar_t__*) ;
 scalar_t__ map_file (char*,char const**) ;
 int run_cmd (char const*,scalar_t__) ;
 int test_output (char const*,scalar_t__,char const*,scalar_t__) ;

__attribute__((used)) static void run_test(const char *cmd_data, DWORD cmd_size, const char *exp_data, DWORD exp_size)
{
    const char *out_data, *actual_cmd_data;
    DWORD out_size, actual_cmd_size;

    actual_cmd_data = convert_input_data(cmd_data, cmd_size, &actual_cmd_size);
    if(!actual_cmd_size || !actual_cmd_data)
        goto cleanup;

    if(!run_cmd(actual_cmd_data, actual_cmd_size))
        goto cleanup;

    out_size = map_file("test.out", &out_data);
    if(out_size) {
        test_output(out_data, out_size, exp_data, exp_size);
        UnmapViewOfFile(out_data);
    }
    DeleteFileA("test.out");
    DeleteFileA("test.err");

cleanup:
    HeapFree(GetProcessHeap(), 0, (LPVOID)actual_cmd_data);
}
