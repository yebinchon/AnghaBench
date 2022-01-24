#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cmdID; void* cmdf; } ;
typedef  TYPE_1__ OLECMD ;
typedef  int /*<<< orphan*/  HTMLDocument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  IDM_BOLD 140 
#define  IDM_DELETE 139 
#define  IDM_FONTNAME 138 
#define  IDM_FONTSIZE 137 
#define  IDM_FORECOLOR 136 
#define  IDM_HORIZONTALLINE 135 
#define  IDM_HYPERLINK 134 
#define  IDM_INDENT 133 
#define  IDM_ITALIC 132 
#define  IDM_ORDERLIST 131 
#define  IDM_OUTDENT 130 
#define  IDM_UNDERLINE 129 
#define  IDM_UNORDERLIST 128 
 int /*<<< orphan*/ * NSCMD_BOLD ; 
 int /*<<< orphan*/ * NSCMD_ITALIC ; 
 int /*<<< orphan*/ * NSCMD_OL ; 
 int /*<<< orphan*/ * NSCMD_UL ; 
 int /*<<< orphan*/ * NSCMD_UNDERLINE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(HTMLDocument *This, OLECMD *cmd)
{
    switch(cmd->cmdID) {
    case IDM_DELETE:
        FUNC0("CGID_MSHTML: IDM_DELETE\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_FONTNAME:
        FUNC0("CGID_MSHTML: IDM_FONTNAME\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_FONTSIZE:
        FUNC0("CGID_MSHTML: IDM_FONTSIZE\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_BOLD:
        FUNC0("CGID_MSHTML: IDM_BOLD\n");
        cmd->cmdf = FUNC1(This, NSCMD_BOLD);
        break;
    case IDM_FORECOLOR:
        FUNC0("CGID_MSHTML: IDM_FORECOLOR\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_ITALIC:
        FUNC0("CGID_MSHTML: IDM_ITALIC\n");
        cmd->cmdf = FUNC1(This, NSCMD_ITALIC);
        break;
    case IDM_UNDERLINE:
        FUNC0("CGID_MSHTML: IDM_UNDERLINE\n");
        cmd->cmdf = FUNC1(This, NSCMD_UNDERLINE);
        break;
    case IDM_HORIZONTALLINE:
        FUNC0("CGID_MSHTML: IDM_HORIZONTALLINE\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_ORDERLIST:
        FUNC0("CGID_MSHTML: IDM_ORDERLIST\n");
        cmd->cmdf = FUNC1(This, NSCMD_OL);
        break;
    case IDM_UNORDERLIST:
        FUNC0("CGID_MSHTML: IDM_HORIZONTALLINE\n");
        cmd->cmdf = FUNC1(This, NSCMD_UL);
        break;
    case IDM_INDENT:
        FUNC0("CGID_MSHTML: IDM_INDENT\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_OUTDENT:
        FUNC0("CGID_MSHTML: IDM_OUTDENT\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    case IDM_HYPERLINK:
        FUNC0("CGID_MSHTML: IDM_HYPERLINK\n");
        cmd->cmdf = FUNC1(This, NULL);
        break;
    }

    return S_OK;
}