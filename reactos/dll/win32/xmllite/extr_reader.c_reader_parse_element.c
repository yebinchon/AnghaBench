
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int resumestate; int nodetype; int instate; int elements; int is_empty_element; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef int HRESULT ;


 int E_FAIL ;
 int FAILED (int ) ;
 int S_FALSE ;
 int StringValue_Prefix ;
 int StringValue_QualifiedName ;
 int StringValue_Value ;
 int XmlNodeType_Element ;
 int XmlReadInState_Content ;
 int XmlReadInState_MiscEnd ;


 int list_empty (int *) ;
 int ltW ;
 int reader_cmp (TYPE_1__*,int ) ;
 int reader_parse_stag (TYPE_1__*,int *,int *,int *) ;
 int reader_set_strvalue (TYPE_1__*,int ,int *) ;
 int reader_shrink (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int strval_empty ;

__attribute__((used)) static HRESULT reader_parse_element(xmlreader *reader)
{
    HRESULT hr;

    switch (reader->resumestate)
    {
    case 129:

        if (reader_cmp(reader, ltW)) return S_FALSE;


        reader_skipn(reader, 1);

        reader_shrink(reader);
        reader->resumestate = 128;
    case 128:
    {
        strval qname, prefix, local;


        hr = reader_parse_stag(reader, &prefix, &local, &qname);
        if (FAILED(hr)) return hr;




        if (reader->is_empty_element && list_empty(&reader->elements))
            reader->instate = XmlReadInState_MiscEnd;
        else
            reader->instate = XmlReadInState_Content;

        reader->nodetype = XmlNodeType_Element;
        reader->resumestate = 129;
        reader_set_strvalue(reader, StringValue_Prefix, &prefix);
        reader_set_strvalue(reader, StringValue_QualifiedName, &qname);
        reader_set_strvalue(reader, StringValue_Value, &strval_empty);
        break;
    }
    default:
        hr = E_FAIL;
    }

    return hr;
}
