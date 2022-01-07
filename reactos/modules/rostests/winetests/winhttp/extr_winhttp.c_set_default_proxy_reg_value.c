
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int GetCurrentProcess () ;
 int IsWow64Process (int ,scalar_t__*) ;
 int KEY_WOW64_32KEY ;
 int KEY_WOW64_64KEY ;
 int KEY_WRITE ;
 int set_proxy (int,int *,int ,int ) ;

__attribute__((used)) static void set_default_proxy_reg_value( BYTE *buf, DWORD len, DWORD type )
{
    BOOL wow64;
    IsWow64Process( GetCurrentProcess(), &wow64 );
    if (sizeof(void *) > sizeof(int) || wow64)
    {
        set_proxy( KEY_WRITE|KEY_WOW64_64KEY, buf, len, type );
        set_proxy( KEY_WRITE|KEY_WOW64_32KEY, buf, len, type );
    }
    else
        set_proxy( KEY_WRITE, buf, len, type );
}
