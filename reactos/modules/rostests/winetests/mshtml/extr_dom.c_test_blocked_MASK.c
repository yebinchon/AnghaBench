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
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC5(IHTMLDocument2 *doc, IHTMLElement *outer_elem)
{
    IHTMLElement *elem;

    FUNC2((IUnknown*)outer_elem,
            "<img id=\"imgid\" src=\"BLOCKED::http://www.winehq.org/img.png\" />");
    elem = FUNC1(doc, "imgid", TRUE);
    if(elem) {
        FUNC4((IUnknown*)elem, "BLOCKED::", "blocked::http://www.winehq.org/img.png");
        FUNC0(elem);
    }

    FUNC2((IUnknown*)outer_elem,
            "<img id=\"imgid\" src=\"BLOCKE::http://www.winehq.org/img.png\" />");
    elem = FUNC1(doc, "imgid", TRUE);
    if(elem) {
        FUNC4((IUnknown*)elem, "blocke::http://www.winehq.org/img.png", NULL);
        FUNC3((IUnknown*)elem, "BLOCKED:http://www.winehq.org/img.png");
        FUNC4((IUnknown*)elem, "blocked:http://www.winehq.org/img.png", NULL);
        FUNC3((IUnknown*)elem, "blocked::http://www.winehq.org/img.png");
        FUNC4((IUnknown*)elem, "BLOCKED::", "blocked::http://www.winehq.org/img.png");
        FUNC0(elem);
    }
}