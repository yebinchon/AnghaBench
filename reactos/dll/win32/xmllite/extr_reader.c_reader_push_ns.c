
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ns; int nsdef; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
struct ns {int entry; int * element; int prefix; int uri; } ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int list_add_head (int *,int *) ;
 int memset (int *,int ,int) ;
 struct ns* reader_alloc (TYPE_1__*,int) ;
 int reader_free (TYPE_1__*,struct ns*) ;
 int reader_free_strvalued (TYPE_1__*,int *) ;
 int reader_strvaldup (TYPE_1__*,int const*,int *) ;

__attribute__((used)) static HRESULT reader_push_ns(xmlreader *reader, const strval *prefix, const strval *uri, BOOL def)
{
    struct ns *ns;
    HRESULT hr;

    ns = reader_alloc(reader, sizeof(*ns));
    if (!ns) return E_OUTOFMEMORY;

    if (def)
        memset(&ns->prefix, 0, sizeof(ns->prefix));
    else {
        hr = reader_strvaldup(reader, prefix, &ns->prefix);
        if (FAILED(hr)) {
            reader_free(reader, ns);
            return hr;
        }
    }

    hr = reader_strvaldup(reader, uri, &ns->uri);
    if (FAILED(hr)) {
        reader_free_strvalued(reader, &ns->prefix);
        reader_free(reader, ns);
        return hr;
    }

    ns->element = ((void*)0);
    list_add_head(def ? &reader->nsdef : &reader->ns, &ns->entry);
    return hr;
}
