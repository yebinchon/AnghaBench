
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int* LPDWORD ;
typedef int HKEY ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int HKEY_CURRENT_USER ;
 int RegCloseKey (int ) ;
 int RegEnumKeyExW (int ,int,char*,int*,int *,int *,int *,int *) ;
 int RegOpenKeyW (int ,int ,int *) ;
 int atoiW (char*) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 int* heap_realloc_zero (int*,int) ;
 int wszZonesKey ;

__attribute__((used)) static LPDWORD build_zonemap_from_reg(void)
{
    WCHAR name[32];
    HKEY hkey;
    LPDWORD data = ((void*)0);
    DWORD allocated = 6;
    DWORD used = 0;
    DWORD res;
    DWORD len;


    res = RegOpenKeyW(HKEY_CURRENT_USER, wszZonesKey, &hkey);
    if (res)
        return ((void*)0);

    data = heap_alloc(allocated * sizeof(DWORD));
    if (!data)
        goto cleanup;

    while (!res) {
        name[0] = '\0';
        len = ARRAY_SIZE(name);
        res = RegEnumKeyExW(hkey, used, name, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

        if (!res) {
            used++;
            if (used == allocated) {
                LPDWORD new_data;

                allocated *= 2;
                new_data = heap_realloc_zero(data, allocated * sizeof(DWORD));
                if (!new_data)
                    goto cleanup;

                data = new_data;
            }
            data[used] = atoiW(name);
        }
    }
    if (used) {
        RegCloseKey(hkey);
        data[0] = used;
        return data;
    }

cleanup:

    RegCloseKey(hkey);
    heap_free(data);
    return ((void*)0);
}
