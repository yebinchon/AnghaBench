
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int OXID ;
typedef int LPWSTR ;
typedef int DWORD ;


 int wsprintfW (int ,char const*,int ,int ) ;

__attribute__((used)) static inline void get_rpc_endpoint(LPWSTR endpoint, const OXID *oxid)
{

    static const WCHAR wszEndpointFormat[] = {'\\','p','i','p','e','\\','O','L','E','_','%','0','8','l','x','%','0','8','l','x',0};
    wsprintfW(endpoint, wszEndpointFormat, (DWORD)(*oxid >> 32),(DWORD)*oxid);
}
