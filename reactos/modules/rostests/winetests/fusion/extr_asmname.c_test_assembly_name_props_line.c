
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int str ;
typedef int WCHAR ;
struct TYPE_3__ {size_t hr; size_t size; int val; } ;
typedef int IAssemblyName ;
typedef size_t HRESULT ;
typedef size_t DWORD ;
typedef TYPE_1__ ASMPROP_RES ;


 size_t ASM_NAME_CONFIG_MASK ;
 size_t ASM_NAME_CULTURE ;
 size_t ASM_NAME_FILE_MAJOR_VERSION ;
 size_t ASM_NAME_MAX_PARAMS ;
 size_t ASM_NAME_NAME ;
 size_t E_INVALIDARG ;
 size_t IAssemblyName_GetProperty (int *,size_t,int*,size_t*) ;
 int MAX_PATH ;
 size_t STRSAFE_E_INSUFFICIENT_BUFFER ;
 scalar_t__ broken (int) ;
 int lstrcmpW (int*,int*) ;
 int memcmp (int ,int*,size_t) ;
 int memset (int*,int,int) ;
 int ok (int,char*,int,size_t,...) ;
 int to_widechar (int*,int ) ;
 size_t wine_dbgstr_w (int*) ;

__attribute__((used)) static void test_assembly_name_props_line(IAssemblyName *name,
                                          const ASMPROP_RES *vals, int line)
{
    HRESULT hr;
    DWORD i, size;
    WCHAR expect[MAX_PATH];
    WCHAR str[MAX_PATH];

    for (i = 0; i < ASM_NAME_MAX_PARAMS; i++)
    {
        to_widechar(expect, vals[i].val);

        size = MAX_PATH;
        memset( str, 0xcc, sizeof(str) );
        hr = IAssemblyName_GetProperty(name, i, str, &size);

        ok(hr == vals[i].hr ||
           broken(i >= ASM_NAME_CONFIG_MASK && hr == E_INVALIDARG) ||
           broken(i >= ASM_NAME_FILE_MAJOR_VERSION && hr == E_INVALIDARG),
           "%d: prop %d: Expected %08x, got %08x\n", line, i, vals[i].hr, hr);
        if (hr != E_INVALIDARG)
        {
            ok(size == vals[i].size, "%d: prop %d: Expected %d, got %d\n", line, i, vals[i].size, size);
            if (!size)
            {
                ok(str[0] == 0xcccc, "%d: prop %d: str[0] = %x\n", line, i, str[0]);
            }
            else if (size != MAX_PATH)
            {
                if (i != ASM_NAME_NAME && i != ASM_NAME_CULTURE)
                    ok( !memcmp( vals[i].val, str, size ), "%d: prop %d: wrong value\n", line, i );
                else
                    ok( !lstrcmpW( expect, str ), "%d: prop %d: Expected %s, got %s\n",
                        line, i, wine_dbgstr_w(expect), wine_dbgstr_w(str) );
            }

            if (size != 0 && size != MAX_PATH)
            {
                size--;
                hr = IAssemblyName_GetProperty(name, i, str, &size);
                ok(hr == STRSAFE_E_INSUFFICIENT_BUFFER,
                        "%d: prop %d: Expected STRSAFE_E_INSUFFICIENT_BUFFER, got %08x\n", line, i, hr);
                ok(size == vals[i].size, "%d: prop %d: Expected %d, got %d\n", line, i, vals[i].size, size);
            }
        }
    }
}
