
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int FALSE ;
 int MAX_PATH ;
 scalar_t__ MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int TRUE ;
 scalar_t__ lstrcmpW (int *,int const*) ;
 int ok (int ,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static BOOL is_in_strarray(const WCHAR *needle, const char *hay)
{
    WCHAR wstr[MAX_PATH];

    if(!needle && !hay)
        return TRUE;

    while(hay && *hay)
    {
        DWORD ret;

        if(strcmp(hay, "(null)") == 0 && !needle)
            return TRUE;

        ret = MultiByteToWideChar(CP_ACP, 0, hay, -1, wstr, ARRAY_SIZE(wstr));
        if(ret == 0)
        {
            ok(0, "Failed to convert string\n");
            return FALSE;
        }

        if(lstrcmpW(wstr, needle) == 0)
            return TRUE;

        hay += strlen(hay) + 1;
    }

    return FALSE;
}
