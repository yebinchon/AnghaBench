
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int resumestate; scalar_t__* resume; int nodetype; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int S_OK ;
 int StringValue_LocalName ;
 int StringValue_QualifiedName ;
 int StringValue_Value ;
 int TRACE (char*,int ) ;
 int XmlNodeType_Whitespace ;


 size_t XmlReadResume_Body ;
 int debug_strval (TYPE_1__*,int *) ;
 int is_reader_pending (TYPE_1__*) ;
 scalar_t__ reader_get_cur (TYPE_1__*) ;
 int reader_init_strvalue (scalar_t__,scalar_t__,int *) ;
 int reader_set_strvalue (TYPE_1__*,int ,int *) ;
 int reader_shrink (TYPE_1__*) ;
 int reader_skipspaces (TYPE_1__*) ;
 int strval_empty ;

__attribute__((used)) static HRESULT reader_parse_whitespace(xmlreader *reader)
{
    switch (reader->resumestate)
    {
    case 129:
        reader_shrink(reader);
        reader->resumestate = 128;
        reader->resume[XmlReadResume_Body] = reader_get_cur(reader);
        reader->nodetype = XmlNodeType_Whitespace;
        reader_set_strvalue(reader, StringValue_LocalName, &strval_empty);
        reader_set_strvalue(reader, StringValue_QualifiedName, &strval_empty);
        reader_set_strvalue(reader, StringValue_Value, &strval_empty);

    case 128:
    {
        strval value;
        UINT start;

        reader_skipspaces(reader);
        if (is_reader_pending(reader)) return S_OK;

        start = reader->resume[XmlReadResume_Body];
        reader_init_strvalue(start, reader_get_cur(reader)-start, &value);
        reader_set_strvalue(reader, StringValue_Value, &value);
        TRACE("%s\n", debug_strval(reader, &value));
        reader->resumestate = 129;
    }
    default:
        ;
    }

    return S_OK;
}
