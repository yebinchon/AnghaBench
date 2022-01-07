
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct TYPE_11__ {struct reader_position position; } ;
struct TYPE_12__ {scalar_t__ resumestate; void* nodetype; scalar_t__* resume; TYPE_1__ empty_element; struct reader_position position; } ;
typedef TYPE_2__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int S_OK ;
 int StringValue_Value ;
 int WC_E_CDSECTEND ;
 void* XmlNodeType_Text ;
 void* XmlNodeType_Whitespace ;
 scalar_t__ XmlReadResumeState_CharData ;
 scalar_t__ XmlReadResumeState_Initial ;
 size_t XmlReadResume_Body ;
 scalar_t__ is_wchar_space (char) ;
 int reader_cmp (TYPE_2__*,char const*) ;
 scalar_t__ reader_get_cur (TYPE_2__*) ;
 char* reader_get_ptr (TYPE_2__*) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_parse_reference (TYPE_2__*) ;
 int reader_set_strvalue (TYPE_2__*,int ,int *) ;
 int reader_shrink (TYPE_2__*) ;
 int reader_skipn (TYPE_2__*,int) ;

__attribute__((used)) static HRESULT reader_parse_chardata(xmlreader *reader)
{
    struct reader_position position;
    WCHAR *ptr;
    UINT start;

    if (reader->resumestate == XmlReadResumeState_CharData)
    {
        start = reader->resume[XmlReadResume_Body];
        ptr = reader_get_ptr(reader);
    }
    else
    {
        reader_shrink(reader);
        ptr = reader_get_ptr(reader);
        start = reader_get_cur(reader);

        if (!*ptr || *ptr == '<') return S_OK;
        reader->nodetype = is_wchar_space(*ptr) ? XmlNodeType_Whitespace : XmlNodeType_Text;
        reader->resume[XmlReadResume_Body] = start;
        reader->resumestate = XmlReadResumeState_CharData;
        reader_set_strvalue(reader, StringValue_Value, ((void*)0));
    }

    position = reader->position;
    while (*ptr)
    {
        static const WCHAR ampW[] = {'&',0};


        if (ptr[0] == ']' && ptr[1] == ']' && ptr[2] == '>')
            return WC_E_CDSECTEND;


        if (ptr[0] == '<')
        {
            strval value;

            reader->empty_element.position = position;
            reader_init_strvalue(start, reader_get_cur(reader)-start, &value);
            reader_set_strvalue(reader, StringValue_Value, &value);
            reader->resume[XmlReadResume_Body] = 0;
            reader->resumestate = XmlReadResumeState_Initial;
            return S_OK;
        }


        if (!is_wchar_space(*ptr)) reader->nodetype = XmlNodeType_Text;

        if (!reader_cmp(reader, ampW))
            reader_parse_reference(reader);
        else
            reader_skipn(reader, 1);

        ptr = reader_get_ptr(reader);
    }

    return S_OK;
}
