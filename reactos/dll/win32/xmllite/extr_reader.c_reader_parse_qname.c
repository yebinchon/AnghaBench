
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__* resume; } ;
typedef TYPE_1__ xmlreader ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ start; } ;
typedef TYPE_2__ strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int E_PENDING ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int NC_E_QNAMECHARACTER ;
 int S_OK ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 size_t XmlReadResume_Local ;
 size_t XmlReadResume_Name ;
 int debug_strval (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ is_ncnamechar (char) ;
 scalar_t__ is_reader_pending (TYPE_1__*) ;
 scalar_t__ reader_get_cur (TYPE_1__*) ;
 char* reader_get_ptr (TYPE_1__*) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,TYPE_2__*) ;
 int reader_parse_local (TYPE_1__*,TYPE_2__*,int ) ;
 int reader_skipn (TYPE_1__*,int) ;

__attribute__((used)) static HRESULT reader_parse_qname(xmlreader *reader, strval *prefix, strval *local, strval *qname)
{
    WCHAR *ptr;
    UINT start;
    HRESULT hr;

    if (reader->resume[XmlReadResume_Name])
    {
        start = reader->resume[XmlReadResume_Name];
        ptr = reader_get_ptr(reader);
    }
    else
    {
        ptr = reader_get_ptr(reader);
        start = reader_get_cur(reader);
        reader->resume[XmlReadResume_Name] = start;
        if (!is_ncnamechar(*ptr)) return NC_E_QNAMECHARACTER;
    }

    if (reader->resume[XmlReadResume_Local])
    {
        hr = reader_parse_local(reader, local, FALSE);
        if (FAILED(hr)) return hr;

        reader_init_strvalue(reader->resume[XmlReadResume_Name],
                             local->start - reader->resume[XmlReadResume_Name] - 1,
                             prefix);
    }
    else
    {

        while (is_ncnamechar(*ptr))
        {
            reader_skipn(reader, 1);
            ptr = reader_get_ptr(reader);
        }

        if (is_reader_pending(reader)) return E_PENDING;


        if (*ptr == ':')
        {
            reader_init_strvalue(start, reader_get_cur(reader)-start, prefix);


            reader_skipn(reader, 1);
            hr = reader_parse_local(reader, local, TRUE);
            if (FAILED(hr)) return hr;
        }
        else
        {
            reader_init_strvalue(reader->resume[XmlReadResume_Name], reader_get_cur(reader)-reader->resume[XmlReadResume_Name], local);
            reader_init_strvalue(0, 0, prefix);
        }
    }

    if (prefix->len)
        TRACE("qname %s:%s\n", debug_strval(reader, prefix), debug_strval(reader, local));
    else
        TRACE("ncname %s\n", debug_strval(reader, local));

    reader_init_strvalue(prefix->len ? prefix->start : local->start,

                        (prefix->len ? prefix->len + 1 : 0) + local->len,
                         qname);

    reader->resume[XmlReadResume_Name] = 0;
    reader->resume[XmlReadResume_Local] = 0;

    return S_OK;
}
