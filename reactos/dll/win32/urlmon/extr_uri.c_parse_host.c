
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_data ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int const**,int *,int ,int ) ;
 int TRUE ;
 int parse_ip_literal (int const**,int *,int ,int ) ;
 int parse_ipv4address (int const**,int *,int ) ;
 int parse_reg_name (int const**,int *,int ,int ) ;

__attribute__((used)) static BOOL parse_host(const WCHAR **ptr, parse_data *data, DWORD flags, DWORD extras) {
    if(!parse_ip_literal(ptr, data, flags, extras)) {
        if(!parse_ipv4address(ptr, data, flags)) {
            if(!parse_reg_name(ptr, data, flags, extras)) {
                TRACE("(%p %p %x %x): Malformed URI, Unknown host type.\n",
                    ptr, data, flags, extras);
                return FALSE;
            }
        }
    }

    return TRUE;
}
