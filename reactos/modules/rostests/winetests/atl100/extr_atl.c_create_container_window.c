
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int CW_USEDEFAULT ;
 int CreateWindowA (char*,char*,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static HWND create_container_window(void)
{
    return CreateWindowA("WineAtlTestClass", "Wine ATL Test Window", 0,
                              CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                              CW_USEDEFAULT, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
