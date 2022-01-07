
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmdID; void* cmdf; } ;
typedef TYPE_1__ OLECMD ;
typedef int HTMLDocument ;
typedef int HRESULT ;
 int * NSCMD_BOLD ;
 int * NSCMD_ITALIC ;
 int * NSCMD_OL ;
 int * NSCMD_UL ;
 int * NSCMD_UNDERLINE ;
 int S_OK ;
 int TRACE (char*) ;
 void* query_ns_edit_status (int *,int *) ;

__attribute__((used)) static HRESULT query_edit_status(HTMLDocument *This, OLECMD *cmd)
{
    switch(cmd->cmdID) {
    case 139:
        TRACE("CGID_MSHTML: IDM_DELETE\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 138:
        TRACE("CGID_MSHTML: IDM_FONTNAME\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 137:
        TRACE("CGID_MSHTML: IDM_FONTSIZE\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 140:
        TRACE("CGID_MSHTML: IDM_BOLD\n");
        cmd->cmdf = query_ns_edit_status(This, NSCMD_BOLD);
        break;
    case 136:
        TRACE("CGID_MSHTML: IDM_FORECOLOR\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 132:
        TRACE("CGID_MSHTML: IDM_ITALIC\n");
        cmd->cmdf = query_ns_edit_status(This, NSCMD_ITALIC);
        break;
    case 129:
        TRACE("CGID_MSHTML: IDM_UNDERLINE\n");
        cmd->cmdf = query_ns_edit_status(This, NSCMD_UNDERLINE);
        break;
    case 135:
        TRACE("CGID_MSHTML: IDM_HORIZONTALLINE\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 131:
        TRACE("CGID_MSHTML: IDM_ORDERLIST\n");
        cmd->cmdf = query_ns_edit_status(This, NSCMD_OL);
        break;
    case 128:
        TRACE("CGID_MSHTML: IDM_HORIZONTALLINE\n");
        cmd->cmdf = query_ns_edit_status(This, NSCMD_UL);
        break;
    case 133:
        TRACE("CGID_MSHTML: IDM_INDENT\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 130:
        TRACE("CGID_MSHTML: IDM_OUTDENT\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    case 134:
        TRACE("CGID_MSHTML: IDM_HYPERLINK\n");
        cmd->cmdf = query_ns_edit_status(This, ((void*)0));
        break;
    }

    return S_OK;
}
