
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct assembly_version {int revision; int build; int minor; int major; } ;
struct TYPE_2__ {struct assembly_version version; } ;
struct assembly {TYPE_1__ id; } ;
typedef char WCHAR ;


 int sprintfW (char*,char const*,int ,int ,int ,int ) ;

__attribute__((used)) static int get_assembly_version(struct assembly *assembly, WCHAR *ret)
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    struct assembly_version *ver = &assembly->id.version;
    WCHAR buff[25];

    if (!ret) ret = buff;
    return sprintfW(ret, fmtW, ver->major, ver->minor, ver->build, ver->revision);
}
