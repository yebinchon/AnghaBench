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
typedef  int /*<<< orphan*/  const elem_type_t ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
#define  ET_BR 129 
#define  ET_DIV 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC4(IHTMLDocument2 *doc, IHTMLElement *parent)
{
    IHTMLElement *elem, *elem2;

    static const elem_type_t br_br[] = {ET_BR, ET_BR};
    static const elem_type_t br_div_br[] = {ET_BR, ET_DIV, ET_BR};

    elem = FUNC2(doc, "BR");
    FUNC1(parent, "BeforeEnd", elem);
    FUNC0(elem);

    FUNC3((IUnknown*)parent, br_br, 1);

    elem = FUNC2(doc, "BR");
    FUNC1(parent, "beforeend", elem);

    FUNC3((IUnknown*)parent, br_br, 2);

    elem2 = FUNC2(doc, "DIV");
    FUNC1(elem, "beforebegin", elem2);
    FUNC0(elem2);
    FUNC0(elem);

    FUNC3((IUnknown*)parent, br_div_br, 3);
}