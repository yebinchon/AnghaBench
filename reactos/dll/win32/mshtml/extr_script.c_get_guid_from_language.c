
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BOOL ;


 int CLSIDFromProgID (int ,int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL get_guid_from_language(LPCWSTR type, GUID *guid)
{
    HRESULT hres;

    hres = CLSIDFromProgID(type, guid);
    if(FAILED(hres))
        return FALSE;



    return TRUE;
}
