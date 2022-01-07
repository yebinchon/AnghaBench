
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xmlreader ;
struct TYPE_8__ {char* member_0; int member_1; size_t len; } ;
typedef TYPE_1__ strval ;
typedef char WCHAR ;
typedef size_t UINT ;
typedef int HRESULT ;


 int E_PENDING ;
 scalar_t__ FAILED (int ) ;
 int NC_E_NAMECOLON ;
 int S_OK ;
 int TRACE (char*,int ,size_t) ;
 int WC_E_LEADINGXML ;
 int WC_E_PI ;
 int debug_strval (int *,TYPE_1__*) ;
 scalar_t__ is_reader_pending (int *) ;
 char* reader_get_strptr (int *,TYPE_1__*) ;
 int reader_parse_name (int *,TYPE_1__*) ;
 scalar_t__ strval_eq (int *,TYPE_1__*,TYPE_1__ const*) ;

__attribute__((used)) static HRESULT reader_parse_pitarget(xmlreader *reader, strval *target)
{
    static const WCHAR xmlW[] = {'x','m','l'};
    static const strval xmlval = { (WCHAR*)xmlW, 3 };
    strval name;
    WCHAR *ptr;
    HRESULT hr;
    UINT i;

    hr = reader_parse_name(reader, &name);
    if (FAILED(hr)) return is_reader_pending(reader) ? E_PENDING : WC_E_PI;


    if (strval_eq(reader, &name, &xmlval))
        return WC_E_LEADINGXML;


    ptr = reader_get_strptr(reader, &name);
    for (i = 0; i < name.len; i++)
        if (ptr[i] == ':')
            return i ? NC_E_NAMECOLON : WC_E_PI;

    TRACE("pitarget %s:%d\n", debug_strval(reader, &name), name.len);
    *target = name;
    return S_OK;
}
