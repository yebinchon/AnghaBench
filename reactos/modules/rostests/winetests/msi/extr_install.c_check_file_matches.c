
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_READ ;
 int OPEN_EXISTING ;
 int ReadFile (int ,char*,int,scalar_t__*,int *) ;
 int memcmp (char*,char const*,scalar_t__) ;
 int ok (int,char*,scalar_t__,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void check_file_matches(const char *filename, const char *text)
{
    char buffer[200];
    HANDLE file;
    DWORD size;

    file = CreateFileA(filename, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    ReadFile(file, buffer, sizeof(buffer), &size, ((void*)0));
    ok(size == strlen(text) && !memcmp(buffer, text, size), "got %.*s\n", size, buffer);
    CloseHandle(file);
}
