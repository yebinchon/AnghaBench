
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ CreateFile (char*,int,int,int *,int ,int ,int *) ;
 int FILE_FLAG_NO_BUFFERING ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int printf (char*) ;

int main()
{




    HANDLE Device;
    DWORD BytesReturned;

    printf("SB Test\n");

    Device = CreateFile("\\\\.\\SndBlst", GENERIC_READ | GENERIC_WRITE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE,
                        ((void*)0),
                        OPEN_EXISTING,
                        FILE_FLAG_NO_BUFFERING,
                        ((void*)0));

    if (Device == INVALID_HANDLE_VALUE)
    {
        printf("Device is busy or could not be found.\n");
        return -1;
    }
}
