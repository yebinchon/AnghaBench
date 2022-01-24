#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_MSHTML ; 
 int /*<<< orphan*/  IDM_BOLD ; 
 int /*<<< orphan*/  IDM_DELETE ; 
 int /*<<< orphan*/  IDM_FONTNAME ; 
 int /*<<< orphan*/  IDM_FONTSIZE ; 
 int /*<<< orphan*/  IDM_FORECOLOR ; 
 int /*<<< orphan*/  IDM_HORIZONTALLINE ; 
 int /*<<< orphan*/  IDM_INDENT ; 
 int /*<<< orphan*/  IDM_ITALIC ; 
 int /*<<< orphan*/  IDM_JUSTIFYCENTER ; 
 int /*<<< orphan*/  IDM_JUSTIFYLEFT ; 
 int /*<<< orphan*/  IDM_JUSTIFYRIGHT ; 
 int /*<<< orphan*/  IDM_ORDERLIST ; 
 int /*<<< orphan*/  IDM_OUTDENT ; 
 int /*<<< orphan*/  IDM_SELECTALL ; 
 int /*<<< orphan*/  IDM_UNDERLINE ; 
 int /*<<< orphan*/  IDM_UNORDERLIST ; 
 int OLECMDF_ENABLED ; 
 int /*<<< orphan*/ * doc_unk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(IHTMLDocument2 *doc, DWORD cmdf)
{
    IUnknown *unk = doc ? (IUnknown*)doc : doc_unk;

    FUNC0(unk, &CGID_MSHTML, IDM_FONTNAME, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_FONTSIZE, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_SELECTALL, cmdf|OLECMDF_ENABLED);
    FUNC0(unk, &CGID_MSHTML, IDM_BOLD, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_FORECOLOR, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_JUSTIFYCENTER, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_JUSTIFYLEFT, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_JUSTIFYRIGHT, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_ITALIC, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_UNDERLINE, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_HORIZONTALLINE, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_ORDERLIST, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_UNORDERLIST, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_INDENT, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_OUTDENT, cmdf);
    FUNC0(unk, &CGID_MSHTML, IDM_DELETE, cmdf);
}