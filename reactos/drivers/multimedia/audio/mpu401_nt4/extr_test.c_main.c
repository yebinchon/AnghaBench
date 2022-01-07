
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int Test ;
typedef int Notes ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ CreateFile (char*,int,int,int *,int ,int ,int *) ;
 int DeviceIoControl (scalar_t__,int ,int**,int,int *,int ,int *,int *) ;
 int FILE_FLAG_NO_BUFFERING ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_MIDI_PLAY ;
 int OPEN_EXISTING ;
 int printf (char*) ;

int main()
{



    DWORD BytesReturned;
    BYTE Test[3];
    BYTE Notes[] = {50, 52, 54, 55, 57, 59, 61};
    HANDLE Device;
    UINT Note;
    UINT Junk;

    printf("Test program for MPU401 driver\n");

    Device = CreateFile("\\\\.\\MPU401_Out_0", GENERIC_READ | GENERIC_WRITE,
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

    printf("Device is open, let's play some music...\n");

        Test[0] = 0x90;
        Test[2] = 0x7f;

    for (Note = 0; Note < sizeof(Notes); Note ++)
    {
        Test[1] = Notes[Note];

    DeviceIoControl(
        Device,
        IOCTL_MIDI_PLAY,
        &Test,
        sizeof(Test),
        ((void*)0),
        0,
        &BytesReturned,
        ((void*)0)
        );

        for (Junk = 0; Junk < 100000; Junk ++);
    }
}
