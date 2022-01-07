
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int InfCount; int * VersionData; int InfStyle; } ;
typedef TYPE_1__* PSP_INF_INFORMATION ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int HINF ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int INF_STYLE_WIN4 ;
 int PARSER_get_inf_filename (int ) ;
 int SP_INF_INFORMATION ;
 int SetLastError (int ) ;
 int TRUE ;
 int VersionData ;
 int lstrcpyW (int ,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static BOOL fill_inf_info(HINF inf, PSP_INF_INFORMATION buffer, DWORD size, DWORD *required)
{
    LPCWSTR filename = PARSER_get_inf_filename(inf);
    DWORD total_size = FIELD_OFFSET(SP_INF_INFORMATION, VersionData)
                        + (lstrlenW(filename) + 1) * sizeof(WCHAR);

    if (required) *required = total_size;


    if (buffer)
    {
        if (size < total_size)
        {
            SetLastError(ERROR_INSUFFICIENT_BUFFER);
            return FALSE;
        }
        buffer->InfStyle = INF_STYLE_WIN4;
        buffer->InfCount = 1;

        lstrcpyW((LPWSTR)&buffer->VersionData[0], filename);
    }
    return TRUE;
}
