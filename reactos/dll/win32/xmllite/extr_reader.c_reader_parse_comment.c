
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ resumestate; scalar_t__* resume; int nodetype; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int S_OK ;
 int StringValue_Value ;
 int TRACE (char*,int ) ;
 int WC_E_COMMENT ;
 int XmlNodeType_Comment ;
 scalar_t__ XmlReadResumeState_Comment ;
 scalar_t__ XmlReadResumeState_Initial ;
 size_t XmlReadResume_Body ;
 int debug_strval (TYPE_1__*,int *) ;
 scalar_t__ reader_get_cur (TYPE_1__*) ;
 char* reader_get_ptr (TYPE_1__*) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_set_strvalue (TYPE_1__*,int ,int *) ;
 int reader_shrink (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;

__attribute__((used)) static HRESULT reader_parse_comment(xmlreader *reader)
{
    WCHAR *ptr;
    UINT start;

    if (reader->resumestate == XmlReadResumeState_Comment)
    {
        start = reader->resume[XmlReadResume_Body];
        ptr = reader_get_ptr(reader);
    }
    else
    {

        reader_skipn(reader, 4);
        reader_shrink(reader);
        ptr = reader_get_ptr(reader);
        start = reader_get_cur(reader);
        reader->nodetype = XmlNodeType_Comment;
        reader->resume[XmlReadResume_Body] = start;
        reader->resumestate = XmlReadResumeState_Comment;
        reader_set_strvalue(reader, StringValue_Value, ((void*)0));
    }



    while (*ptr)
    {
        if (ptr[0] == '-')
        {
            if (ptr[1] == '-')
            {
                if (ptr[2] == '>')
                {
                    strval value;

                    reader_init_strvalue(start, reader_get_cur(reader)-start, &value);
                    TRACE("%s\n", debug_strval(reader, &value));


                    reader_skipn(reader, 3);

                    reader_set_strvalue(reader, StringValue_Value, &value);
                    reader->resume[XmlReadResume_Body] = 0;
                    reader->resumestate = XmlReadResumeState_Initial;
                    return S_OK;
                }
                else
                    return WC_E_COMMENT;
            }
        }

        reader_skipn(reader, 1);
        ptr++;
    }

    return S_OK;
}
