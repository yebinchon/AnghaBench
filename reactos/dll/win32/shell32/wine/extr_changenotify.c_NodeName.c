
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {TYPE_1__* apidl; } ;
struct TYPE_4__ {int pidl; } ;
typedef TYPE_2__ NOTIFICATIONLIST ;


 int MAX_PATH ;
 scalar_t__ SHGetPathFromIDListW (int ,int *) ;
 int debugstr_w (int *) ;
 char* wine_dbg_sprintf (char*,...) ;

__attribute__((used)) static const char * NodeName(const NOTIFICATIONLIST *item)
{
    const char *str;
    WCHAR path[MAX_PATH];

    if(SHGetPathFromIDListW(item->apidl[0].pidl, path ))
        str = wine_dbg_sprintf("%s", debugstr_w(path));
    else
        str = wine_dbg_sprintf("<not a disk file>" );
    return str;
}
