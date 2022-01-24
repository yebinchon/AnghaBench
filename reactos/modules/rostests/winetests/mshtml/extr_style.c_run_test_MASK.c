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
typedef  int /*<<< orphan*/  (* style_test_t ) (int /*<<< orphan*/ *) ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  PropertyNotifySink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  doc_complete ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static void FUNC8(const char *str, style_test_t test)
{
    IHTMLDocument2 *doc;
    ULONG ref;
    MSG msg;

    doc = FUNC5(str);
    if(!doc)
        return;

    FUNC6((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && FUNC1(&msg, NULL, 0, 0)) {
        FUNC3(&msg);
        FUNC0(&msg);
    }

    test(doc);

    ref = FUNC2(doc);
    FUNC7(!ref || FUNC4(ref == 1), /* Vista */
       "ref = %d\n", ref);
}