
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int MAX_PATH ;
 int find_mono_dll (int ,char*,int) ;
 int strcatW (int ,char const*) ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static BOOL get_mono_path_from_folder(LPCWSTR folder, LPWSTR mono_path, int abi_version)
{
    static const WCHAR mono_one_dot_zero[] = {'\\','m','o','n','o','-','1','.','0', 0};
    static const WCHAR mono_two_dot_zero[] = {'\\','m','o','n','o','-','2','.','0', 0};
    WCHAR mono_dll_path[MAX_PATH];
    BOOL found = FALSE;

    strcpyW(mono_path, folder);

    if (abi_version == 1)
        strcatW(mono_path, mono_one_dot_zero);
    else if (abi_version == 2)
        strcatW(mono_path, mono_two_dot_zero);

    found = find_mono_dll(mono_path, mono_dll_path, abi_version);

    return found;
}
