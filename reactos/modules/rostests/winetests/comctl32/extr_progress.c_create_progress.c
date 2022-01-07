
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int CreateWindowExA (int ,int ,char*,int,int ,int ,int,int,int *,int *,int ,int ) ;
 int GetModuleHandleA (int *) ;
 int PROGRESS_CLASSA ;
 int WS_VISIBLE ;

__attribute__((used)) static HWND create_progress(DWORD style)
{
    return CreateWindowExA(0, PROGRESS_CLASSA, "", WS_VISIBLE | style,
      0, 0, 100, 20, ((void*)0), ((void*)0), GetModuleHandleA(((void*)0)), 0);
}
