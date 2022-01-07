
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VARIANT ;
struct TYPE_6__ {TYPE_1__* doc_obj; } ;
struct TYPE_5__ {int usermode; } ;
typedef TYPE_2__ HTMLDocument ;
typedef int HRESULT ;
typedef int DWORD ;


 int BROWSEMODE ;
 int FIXME (char*) ;
 int S_OK ;
 int WARN (char*,TYPE_2__*,int ,int *,int *) ;

__attribute__((used)) static HRESULT exec_browsemode(HTMLDocument *This, DWORD cmdexecopt, VARIANT *in, VARIANT *out)
{
    WARN("(%p)->(%08x %p %p)\n", This, cmdexecopt, in, out);

    if(in || out)
        FIXME("unsupported args\n");

    This->doc_obj->usermode = BROWSEMODE;

    return S_OK;
}
