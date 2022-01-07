
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_4__ {int doc_obj; } ;
typedef TYPE_1__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int FIXME (char*) ;
 int TRACE (char*,TYPE_1__*,int ,int *,int *) ;
 int setup_edit_mode (int ) ;

__attribute__((used)) static HRESULT exec_editmode(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    TRACE("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(in || out)
        FIXME("unsupported args\n");

    return setup_edit_mode(This->doc_obj);
}
