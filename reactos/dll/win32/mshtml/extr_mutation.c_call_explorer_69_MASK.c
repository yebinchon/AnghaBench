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
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  TYPE_1__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CGID_Explorer ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VT_NULL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(HTMLDocumentObj *doc)
{
    IOleCommandTarget *olecmd;
    VARIANT var;
    HRESULT hres;

    if(!doc->client)
        return;

    hres = FUNC2(doc->client, &IID_IOleCommandTarget, (void**)&olecmd);
    if(FUNC0(hres))
        return;

    FUNC7(&var);
    hres = FUNC3(olecmd, &CGID_Explorer, 69, 0, NULL, &var);
    FUNC4(olecmd);
    if(FUNC5(hres) && FUNC6(&var) != VT_NULL)
        FUNC1("handle result\n");
}