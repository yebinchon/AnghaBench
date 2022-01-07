
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ buf; } ;
typedef TYPE_1__ wstrbuf_t ;
struct TYPE_8__ {int nsnode; } ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;
typedef int * BSTR ;


 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int * SysAllocString (scalar_t__) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int *) ;
 int wstrbuf_append_node_rec (TYPE_1__*,int ) ;
 int wstrbuf_finish (TYPE_1__*) ;
 int wstrbuf_init (TYPE_1__*) ;

HRESULT get_node_text(HTMLDOMNode *node, BSTR *ret)
{
    wstrbuf_t buf;
    HRESULT hres = S_OK;

    if (!wstrbuf_init(&buf))
        return E_OUTOFMEMORY;
    wstrbuf_append_node_rec(&buf, node->nsnode);
    if(buf.buf) {
        *ret = SysAllocString(buf.buf);
        if(!*ret)
            hres = E_OUTOFMEMORY;
    } else {
        *ret = ((void*)0);
    }
    wstrbuf_finish(&buf);

    if(SUCCEEDED(hres))
        TRACE("ret %s\n", debugstr_w(*ret));
    return hres;
}
