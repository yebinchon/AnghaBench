
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int startup ;
typedef int classes ;
struct TYPE_7__ {int hThread; int hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;



 int CloseHandle (int ) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;

 int FALSE ;

 int MAX_PATH ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int ,char*) ;
 int sprintf (char*,char*,char*,char const*) ;
 int winetest_get_mainargs (char***) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_comctl32_classes(void)
{
    char path_name[MAX_PATH];
    PROCESS_INFORMATION info;
    STARTUPINFOA startup;
    char **argv;
    int i;

    static const char *classes[] =
    {
        146,
        135,
        145,
        134,
        144,
        133,
        132,
        143,
        131,
        130,
        142,
        141,
        140,
        "SysLink",
        129,
        139,
        138,
        137,
        128,
        136,
        "!Button",
        "!Edit",
        "!Static",
        "!Listbox",
        "!ComboBox",
        "!ComboLBox",
    };

    winetest_get_mainargs( &argv );
    for (i = 0; i < sizeof(classes) / sizeof(classes[0]); i++)
    {
        memset( &startup, 0, sizeof(startup) );
        startup.cb = sizeof( startup );
        sprintf( path_name, "%s class %s", argv[0], classes[i] );
        ok( CreateProcessA( ((void*)0), path_name, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &startup, &info ),
            "CreateProcess failed.\n" );
        winetest_wait_child_process( info.hProcess );
        CloseHandle( info.hProcess );
        CloseHandle( info.hThread );
    }
}
