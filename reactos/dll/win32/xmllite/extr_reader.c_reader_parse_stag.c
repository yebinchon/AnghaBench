
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct element {struct reader_position position; int localname; int qname; int prefix; } ;
struct TYPE_12__ {int is_empty_element; struct element empty_element; struct reader_position position; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 char const* gtW ;
 int reader_cmp (TYPE_1__*,char const*) ;
 int reader_free_strvalued (TYPE_1__*,int *) ;
 int reader_mark_ns_nodes (TYPE_1__*,struct element*) ;
 int reader_parse_attribute (TYPE_1__*) ;
 int reader_parse_qname (TYPE_1__*,int *,int *,int *) ;
 int reader_push_element (TYPE_1__*,int *,int *,int *,struct reader_position*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;
 int reader_strvaldup (TYPE_1__*,int *,int *) ;

__attribute__((used)) static HRESULT reader_parse_stag(xmlreader *reader, strval *prefix, strval *local, strval *qname)
{
    struct reader_position position = reader->position;
    HRESULT hr;

    hr = reader_parse_qname(reader, prefix, local, qname);
    if (FAILED(hr)) return hr;

    for (;;)
    {
        static const WCHAR endW[] = {'/','>',0};

        reader_skipspaces(reader);


        if ((reader->is_empty_element = !reader_cmp(reader, endW)))
        {
            struct element *element = &reader->empty_element;


            reader_skipn(reader, 2);

            reader_free_strvalued(reader, &element->qname);
            reader_free_strvalued(reader, &element->localname);

            element->prefix = *prefix;
            reader_strvaldup(reader, qname, &element->qname);
            reader_strvaldup(reader, local, &element->localname);
            element->position = position;
            reader_mark_ns_nodes(reader, element);
            return S_OK;
        }


        if (!reader_cmp(reader, gtW))
        {

            reader_skipn(reader, 1);
            return reader_push_element(reader, prefix, local, qname, &position);
        }

        hr = reader_parse_attribute(reader);
        if (FAILED(hr)) return hr;
    }

    return S_OK;
}
