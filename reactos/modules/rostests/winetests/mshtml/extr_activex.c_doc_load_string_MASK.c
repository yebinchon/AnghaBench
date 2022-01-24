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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPersistStreamInit ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IPersistStreamInit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  doc_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * notif_doc ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc, const char *str)
{
    IPersistStreamInit *init;
    IStream *stream;
    HGLOBAL mem;
    SIZE_T len;

    notif_doc = doc;

    doc_complete = FALSE;
    len = FUNC7(str);
    mem = FUNC1(0, len);
    FUNC6(mem, str, len);
    FUNC0(mem, TRUE, &stream);

    FUNC2(doc, &IID_IPersistStreamInit, (void**)&init);

    FUNC3(init, stream);
    FUNC4(init);
    FUNC5(stream);
}