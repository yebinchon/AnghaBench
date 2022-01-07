
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int resumestate; } ;
typedef TYPE_1__ xmlreader ;
typedef int WCHAR ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,int) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ S_FALSE ;

 int XmlReadResumeState_Initial ;



 int commentW ;
 scalar_t__ is_wchar_space (int const) ;
 int piW ;
 int reader_cmp (TYPE_1__*,int ) ;
 int * reader_get_ptr (TYPE_1__*) ;
 scalar_t__ reader_more (TYPE_1__*) ;
 scalar_t__ reader_parse_comment (TYPE_1__*) ;
 scalar_t__ reader_parse_pi (TYPE_1__*) ;
 scalar_t__ reader_parse_whitespace (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_misc(xmlreader *reader)
{
    HRESULT hr = S_FALSE;

    if (reader->resumestate != XmlReadResumeState_Initial)
    {
        hr = reader_more(reader);
        if (FAILED(hr)) return hr;


        switch (reader->resumestate)
        {
        case 129:
        case 130:
            return reader_parse_pi(reader);
        case 131:
            return reader_parse_comment(reader);
        case 128:
            return reader_parse_whitespace(reader);
        default:
            ERR("unknown resume state %d\n", reader->resumestate);
        }
    }

    while (1)
    {
        const WCHAR *cur = reader_get_ptr(reader);

        if (is_wchar_space(*cur))
            hr = reader_parse_whitespace(reader);
        else if (!reader_cmp(reader, commentW))
            hr = reader_parse_comment(reader);
        else if (!reader_cmp(reader, piW))
            hr = reader_parse_pi(reader);
        else
            break;

        if (hr != S_FALSE) return hr;
    }

    return hr;
}
