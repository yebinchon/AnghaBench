
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;


 int DEST_IMAGE ;
 int ImageFile_Execute () ;
 int PageHeap_Execute () ;
 int ParseCmdline (int,int *) ;
 int PrintFlags (int ,int ) ;
 scalar_t__ UseImageFile ;
 scalar_t__ UsePageHeap ;
 int wprintf (char*) ;

int wmain(int argc, LPWSTR argv[])
{
    if (!ParseCmdline(argc, argv))
    {
        wprintf(L"Usage: gflags [/p [image.exe] [/enable|/disable [/full]]]\n"
                L"              [/i <image.exe> [<Flags>]]\n"
                L"    image.exe:  Image you want to deal with\n"
                L"    /enable:    enable page heap for the image\n"
                L"    /disable:   disable page heap for the image\n"
                L"    /full:      activate full debug page heap\n"
                L"    <Flags>:    A 32 bit hex number (0x00000001) that specifies\n"
                L"                one or more global flags to set.\n"
                L"                Without any flags, the current settings are shown.\n"
                L"                Specify FFFFFFFF to delete the GlobalFlags entry.\n"
                L"                Additionally, instead of a single hex number,\n"
                L"                specify a list of abbreviations prefixed with\n"
                L"                a '+' to add, and '-' to remove a bit.\n"
                L"                Valid abbreviations:\n");
        PrintFlags(~0, DEST_IMAGE);
        return 1;
    }

    if (UsePageHeap)
    {
        return PageHeap_Execute();
    }
    else if (UseImageFile)
    {
        return ImageFile_Execute();
    }
    return 2;
}
