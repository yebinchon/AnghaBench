
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parse_data ;
typedef int WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int parse_host (int const**,int *,int ,int ) ;
 int parse_userinfo (int const**,int *,int ) ;

__attribute__((used)) static BOOL parse_authority(const WCHAR **ptr, parse_data *data, DWORD flags) {
    parse_userinfo(ptr, data, flags);




    if(!parse_host(ptr, data, flags, 0))
        return FALSE;

    return TRUE;
}
