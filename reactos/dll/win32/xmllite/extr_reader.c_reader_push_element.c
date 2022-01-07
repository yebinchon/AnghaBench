
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_empty_element; int elements; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
struct reader_position {int dummy; } ;
struct element {struct reader_position position; int entry; int qname; int localname; int prefix; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 int list_add_head (int *,int *) ;
 struct element* reader_alloc_zero (TYPE_1__*,int) ;
 int reader_free_element (TYPE_1__*,struct element*) ;
 int reader_mark_ns_nodes (TYPE_1__*,struct element*) ;
 int reader_strvaldup (TYPE_1__*,int *,int *) ;

__attribute__((used)) static HRESULT reader_push_element(xmlreader *reader, strval *prefix, strval *localname,
    strval *qname, const struct reader_position *position)
{
    struct element *element;
    HRESULT hr;

    element = reader_alloc_zero(reader, sizeof(*element));
    if (!element)
        return E_OUTOFMEMORY;

    if ((hr = reader_strvaldup(reader, prefix, &element->prefix)) == S_OK &&
            (hr = reader_strvaldup(reader, localname, &element->localname)) == S_OK &&
            (hr = reader_strvaldup(reader, qname, &element->qname)) == S_OK)
    {
        list_add_head(&reader->elements, &element->entry);
        reader_mark_ns_nodes(reader, element);
        reader->is_empty_element = FALSE;
        element->position = *position;
    }
    else
        reader_free_element(reader, element);

    return hr;
}
