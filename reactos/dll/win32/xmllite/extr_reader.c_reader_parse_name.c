
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__* resume; } ;
typedef TYPE_1__ xmlreader ;
struct TYPE_13__ {int len; } ;
typedef TYPE_2__ strval ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int E_PENDING ;
 int S_OK ;
 int TRACE (char*,int ,int ) ;
 int WC_E_NAMECHARACTER ;
 size_t XmlReadResume_Name ;
 int debug_strval (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ is_namechar (int ) ;
 int is_namestartchar (int ) ;
 scalar_t__ is_reader_pending (TYPE_1__*) ;
 scalar_t__ reader_get_cur (TYPE_1__*) ;
 int * reader_get_ptr (TYPE_1__*) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,TYPE_2__*) ;
 int reader_skipn (TYPE_1__*,int) ;

__attribute__((used)) static HRESULT reader_parse_name(xmlreader *reader, strval *name)
{
    WCHAR *ptr;
    UINT start;

    if (reader->resume[XmlReadResume_Name])
    {
        start = reader->resume[XmlReadResume_Name];
        ptr = reader_get_ptr(reader);
    }
    else
    {
        ptr = reader_get_ptr(reader);
        start = reader_get_cur(reader);
        if (!is_namestartchar(*ptr)) return WC_E_NAMECHARACTER;
    }

    while (is_namechar(*ptr))
    {
        reader_skipn(reader, 1);
        ptr = reader_get_ptr(reader);
    }

    if (is_reader_pending(reader))
    {
        reader->resume[XmlReadResume_Name] = start;
        return E_PENDING;
    }
    else
        reader->resume[XmlReadResume_Name] = 0;

    reader_init_strvalue(start, reader_get_cur(reader)-start, name);
    TRACE("name %s:%d\n", debug_strval(reader, name), name->len);

    return S_OK;
}
