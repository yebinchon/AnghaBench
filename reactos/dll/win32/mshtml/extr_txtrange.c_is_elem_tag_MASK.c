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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  IID_nsIDOMElement ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(nsIDOMNode *node, LPCWSTR istag)
{
    nsIDOMElement *elem;
    nsAString tag_str;
    const PRUnichar *tag;
    BOOL ret = FALSE;
    nsresult nsres;

    nsres = FUNC6(node, &IID_nsIDOMElement, (void**)&elem);
    if(FUNC0(nsres))
        return FALSE;

    FUNC3(&tag_str, NULL);
    FUNC4(elem, &tag_str);
    FUNC5(elem);
    FUNC2(&tag_str, &tag);

    ret = !FUNC7(tag, istag);

    FUNC1(&tag_str);

    return ret;
}