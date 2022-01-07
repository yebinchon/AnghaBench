
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int member_0; int * lpSource; } ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef TYPE_1__ ACTCTXW ;
typedef int ACTCTX ;


 int CreateActCtxW (TYPE_1__*) ;
 int GetModuleFileNameW (int *,int *,int) ;
 int MAX_PATH ;
 int ok (int ,char*) ;
 int wcscpy (int *,int ) ;
 int * wcsrchr (int *,int) ;

HANDLE _CreateActCtxFromFile(LPCWSTR FileName)
{
    ACTCTXW ActCtx = {sizeof(ACTCTX)};
    WCHAR buffer[MAX_PATH] , *separator;

    ok (GetModuleFileNameW(((void*)0), buffer, MAX_PATH), "GetModuleFileName failed\n");
    separator = wcsrchr(buffer, L'\\');
    if (separator)
        wcscpy(separator + 1, FileName);

    ActCtx.lpSource = buffer;

    return CreateActCtxW(&ActCtx);
}
