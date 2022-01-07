
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HMENU ;
typedef int DWORD ;


 scalar_t__ CTRL_ID ;
 int CreateWindowA (char*,char*,int,int,int,int,int,int ,int ,int *,int ) ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int hMainWnd ;

__attribute__((used)) static HWND build_static(DWORD style)
{
    return CreateWindowA("static", "Test", WS_VISIBLE|WS_CHILD|style, 5, 5, 100, 100, hMainWnd, (HMENU)CTRL_ID, ((void*)0), 0);
}
