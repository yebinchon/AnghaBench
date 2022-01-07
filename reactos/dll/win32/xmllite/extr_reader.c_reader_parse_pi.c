
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int resumestate; scalar_t__* resume; int nodetype; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int FAILED (int ) ;
 int S_OK ;
 int StringValue_LocalName ;
 int StringValue_QualifiedName ;
 int StringValue_Value ;
 int TRACE (char*,int ) ;
 int XmlNodeType_ProcessingInstruction ;

 int XmlReadResumeState_PIBody ;

 size_t XmlReadResume_Body ;
 int debug_strval (TYPE_1__*,int *) ;
 int is_wchar_space (char) ;
 void* reader_get_cur (TYPE_1__*) ;
 char* reader_get_ptr (TYPE_1__*) ;
 char* reader_get_ptr2 (TYPE_1__*,scalar_t__) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_parse_pitarget (TYPE_1__*,int *) ;
 int reader_set_strvalue (TYPE_1__*,int ,int *) ;
 int reader_shrink (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int strval_empty ;

__attribute__((used)) static HRESULT reader_parse_pi(xmlreader *reader)
{
    strval target;
    WCHAR *ptr;
    UINT start;
    HRESULT hr;

    switch (reader->resumestate)
    {
    case 129:

        reader_skipn(reader, 2);
        reader_shrink(reader);
        reader->resumestate = 128;
    case 128:
        hr = reader_parse_pitarget(reader, &target);
        if (FAILED(hr)) return hr;
        reader_set_strvalue(reader, StringValue_LocalName, &target);
        reader_set_strvalue(reader, StringValue_QualifiedName, &target);
        reader_set_strvalue(reader, StringValue_Value, &strval_empty);
        reader->resumestate = XmlReadResumeState_PIBody;
        reader->resume[XmlReadResume_Body] = reader_get_cur(reader);
    default:
        ;
    }

    start = reader->resume[XmlReadResume_Body];
    ptr = reader_get_ptr(reader);
    while (*ptr)
    {
        if (ptr[0] == '?')
        {
            if (ptr[1] == '>')
            {
                UINT cur = reader_get_cur(reader);
                strval value;


                while (start < cur)
                {
                    ptr = reader_get_ptr2(reader, start);
                    if (!is_wchar_space(*ptr)) break;
                    start++;
                }

                reader_init_strvalue(start, cur-start, &value);


                reader_skipn(reader, 2);
                TRACE("%s\n", debug_strval(reader, &value));
                reader->nodetype = XmlNodeType_ProcessingInstruction;
                reader->resumestate = 129;
                reader->resume[XmlReadResume_Body] = 0;
                reader_set_strvalue(reader, StringValue_Value, &value);
                return S_OK;
            }
        }

        reader_skipn(reader, 1);
        ptr = reader_get_ptr(reader);
    }

    return S_OK;
}
