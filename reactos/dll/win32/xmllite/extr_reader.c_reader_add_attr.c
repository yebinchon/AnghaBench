
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int attr_count; int attrs; } ;
typedef TYPE_1__ xmlreader ;
typedef void* strval ;
struct reader_position {int dummy; } ;
struct attribute {unsigned int flags; int entry; struct reader_position position; void* qname; void* prefix; int value; int localname; } ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 int list_add_tail (int *,int *) ;
 int memset (void**,int ,int) ;
 struct attribute* reader_alloc (TYPE_1__*,int) ;
 int reader_free (TYPE_1__*,struct attribute*) ;
 int reader_free_strvalued (TYPE_1__*,int *) ;
 scalar_t__ reader_strvaldup (TYPE_1__*,void**,int *) ;

__attribute__((used)) static HRESULT reader_add_attr(xmlreader *reader, strval *prefix, strval *localname, strval *qname,
    strval *value, const struct reader_position *position, unsigned int flags)
{
    struct attribute *attr;
    HRESULT hr;

    attr = reader_alloc(reader, sizeof(*attr));
    if (!attr) return E_OUTOFMEMORY;

    hr = reader_strvaldup(reader, localname, &attr->localname);
    if (hr == S_OK)
    {
        hr = reader_strvaldup(reader, value, &attr->value);
        if (hr != S_OK)
            reader_free_strvalued(reader, &attr->value);
    }
    if (hr != S_OK)
    {
        reader_free(reader, attr);
        return hr;
    }

    if (prefix)
        attr->prefix = *prefix;
    else
        memset(&attr->prefix, 0, sizeof(attr->prefix));
    attr->qname = qname ? *qname : *localname;
    attr->position = *position;
    attr->flags = flags;
    list_add_tail(&reader->attrs, &attr->entry);
    reader->attr_count++;

    return S_OK;
}
