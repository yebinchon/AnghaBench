
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPCWSTR ;
typedef int GUID ;
typedef int BOOL ;


 int CLSID_JScript ;
 int CLSID_VBScript ;
 int FALSE ;
 int FIXME (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int strcmpiW (int ,char const*) ;

__attribute__((used)) static BOOL get_guid_from_type(LPCWSTR type, GUID *guid)
{
    const WCHAR text_javascriptW[] =
        {'t','e','x','t','/','j','a','v','a','s','c','r','i','p','t',0};
    const WCHAR text_jscriptW[] =
        {'t','e','x','t','/','j','s','c','r','i','p','t',0};
    const WCHAR text_vbscriptW[] =
        {'t','e','x','t','/','v','b','s','c','r','i','p','t',0};


    if(!strcmpiW(type, text_javascriptW) || !strcmpiW(type, text_jscriptW)) {
        *guid = CLSID_JScript;
    }else if(!strcmpiW(type, text_vbscriptW)) {
        *guid = CLSID_VBScript;
    }else {
        FIXME("Unknown type %s\n", debugstr_w(type));
        return FALSE;
    }

    return TRUE;
}
