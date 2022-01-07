
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int LPCSTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int WriteFile (int ,char const*,int,int *,int *) ;

__attribute__((used)) static void create_inf_file(LPCSTR filename)
{
    DWORD dwNumberOfBytesWritten;
    HANDLE hf = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0),
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));

    static const char data[] =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "Class=Bogus\n"
        "ClassGUID={6a55b5a4-3f65-11db-b704-0011955c2bdb}\n"
        "[ClassInstall32]\n"
        "AddReg=BogusClass.NT.AddReg\n"
        "[BogusClass.NT.AddReg]\n"
        "HKR,,,,\"Wine test devices\"\n";

    WriteFile(hf, data, sizeof(data) - 1, &dwNumberOfBytesWritten, ((void*)0));
    CloseHandle(hf);
}
