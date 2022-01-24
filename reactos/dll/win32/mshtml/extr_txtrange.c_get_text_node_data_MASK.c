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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMText ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  PRUnichar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  IID_nsIDOMText ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(nsIDOMNode *node, nsAString *nsstr, const PRUnichar **str)
{
    nsIDOMText *nstext;
    nsresult nsres;

    nsres = FUNC5(node, &IID_nsIDOMText, (void**)&nstext);
    FUNC2(nsres == NS_OK);

    FUNC4(nsstr, NULL);
    nsres = FUNC6(nstext, nsstr);
    FUNC7(nstext);
    if(FUNC1(nsres))
        FUNC0("GetData failed: %08x\n", nsres);

    FUNC3(nsstr, str);
}