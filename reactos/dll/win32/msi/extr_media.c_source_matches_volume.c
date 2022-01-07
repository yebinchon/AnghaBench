
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int * volume_label; } ;
typedef TYPE_1__ MSIMEDIAINFO ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int GetVolumeInformationW (int *,int *,int,int *,int *,int *,int *,int ) ;
 int MAX_PATH ;
 int PathAddBackslashW (int *) ;
 int PathStripToRootW (int *) ;
 int WARN (char*,int ,int ) ;
 int debugstr_w (int *) ;
 int strcmpiW (int *,int const*) ;
 int strcpyW (int *,int ) ;
 int strlenW (int *) ;

__attribute__((used)) static BOOL source_matches_volume(MSIMEDIAINFO *mi, LPCWSTR source_root)
{
    WCHAR volume_name[MAX_PATH + 1], root[MAX_PATH + 1];
    const WCHAR *p;
    int len, len2;

    strcpyW(root, source_root);
    PathStripToRootW(root);
    PathAddBackslashW(root);

    if (!GetVolumeInformationW(root, volume_name, MAX_PATH + 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0))
    {
        WARN("failed to get volume information for %s (%u)\n", debugstr_w(root), GetLastError());
        return FALSE;
    }

    len = strlenW( volume_name );
    len2 = strlenW( mi->volume_label );
    if (len2 > len) return FALSE;
    p = volume_name + len - len2;

    return !strcmpiW( mi->volume_label, p );
}
