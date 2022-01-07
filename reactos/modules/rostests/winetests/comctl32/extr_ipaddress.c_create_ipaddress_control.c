
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int CreateWindowExA (int ,int ,int *,int,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int WC_IPADDRESSA ;
 int WS_BORDER ;
 int WS_VISIBLE ;

__attribute__((used)) static HWND create_ipaddress_control (void)
{
    HWND handle;

    handle = CreateWindowExA(0, WC_IPADDRESSA, ((void*)0),
        WS_BORDER|WS_VISIBLE, 0, 0, 0, 0,
        ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    return handle;
}
