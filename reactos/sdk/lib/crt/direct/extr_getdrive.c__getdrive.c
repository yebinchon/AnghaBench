
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetCurrentDirectoryW (int,int*) ;
 int MAX_PATH ;
 int towupper (int) ;

int _getdrive(void)
{
    WCHAR buffer[MAX_PATH];
    if (GetCurrentDirectoryW( MAX_PATH, buffer )>=2)
    {
        buffer[0]=towupper(buffer[0]);
        if (buffer[0] >= L'A' && buffer[0] <= L'Z' && buffer[1] == L':')
            return buffer[0] - L'A' + 1;
    }
    return 0;
}
