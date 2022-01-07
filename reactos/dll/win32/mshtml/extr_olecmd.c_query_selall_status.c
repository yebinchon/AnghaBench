
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmdf; } ;
typedef TYPE_1__ OLECMD ;
typedef int HTMLDocument ;
typedef int HRESULT ;


 int OLECMDF_ENABLED ;
 int OLECMDF_SUPPORTED ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_1__*) ;

__attribute__((used)) static HRESULT query_selall_status(HTMLDocument *This, OLECMD *cmd)
{
    TRACE("(%p)->(%p)\n", This, cmd);

    cmd->cmdf = OLECMDF_SUPPORTED|OLECMDF_ENABLED;
    return S_OK;
}
