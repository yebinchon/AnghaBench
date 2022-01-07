
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmdf; } ;
typedef TYPE_1__ OLECMD ;
typedef int HTMLDocument ;
typedef int HRESULT ;


 int FIXME (char*,int *) ;
 int OLECMDF_ENABLED ;
 int OLECMDF_SUPPORTED ;
 int S_OK ;

__attribute__((used)) static HRESULT query_mshtml_cut(HTMLDocument *This, OLECMD *cmd)
{
    FIXME("(%p)\n", This);
    cmd->cmdf = OLECMDF_SUPPORTED|OLECMDF_ENABLED;
    return S_OK;
}
