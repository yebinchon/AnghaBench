
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int path; int result; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FreeWideString (int *) ;
 int GetProcessHeap () ;
 int * GetWideString (int ) ;
 int HeapFree (int ,int ,char*) ;
 int PathUnquoteSpacesA (char*) ;
 int PathUnquoteSpacesW (int *) ;
 TYPE_1__* TEST_PATH_UNQUOTE_SPACES ;
 int lstrcmpW (int *,int *) ;
 int ok (int,char*,int ,...) ;
 int strcmp (char*,int ) ;
 char* strdupA (int ) ;

__attribute__((used)) static void test_PathUnquoteSpaces(void)
{
    int i;
    for (i = 0; i < ARRAY_SIZE(TEST_PATH_UNQUOTE_SPACES); i++)
    {
        char *path = strdupA(TEST_PATH_UNQUOTE_SPACES[i].path);
        WCHAR *pathW = GetWideString(TEST_PATH_UNQUOTE_SPACES[i].path);
        WCHAR *resultW = GetWideString(TEST_PATH_UNQUOTE_SPACES[i].result);

        PathUnquoteSpacesA(path);
        ok(!strcmp(path, TEST_PATH_UNQUOTE_SPACES[i].result), "%s (A): got %s expected %s\n",
           TEST_PATH_UNQUOTE_SPACES[i].path, path,
           TEST_PATH_UNQUOTE_SPACES[i].result);

        PathUnquoteSpacesW(pathW);
        ok(!lstrcmpW(pathW, resultW), "%s (W): strings differ\n",
           TEST_PATH_UNQUOTE_SPACES[i].path);
        FreeWideString(pathW);
        FreeWideString(resultW);
        HeapFree(GetProcessHeap(), 0, path);
    }
}
