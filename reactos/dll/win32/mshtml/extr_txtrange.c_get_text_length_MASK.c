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
typedef  int /*<<< orphan*/  UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  IID_nsIDOMText ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT32 FUNC4(nsIDOMNode *node)
{
    nsIDOMText *nstext;
    UINT32 ret;
    nsresult nsres;

    nsres = FUNC1(node, &IID_nsIDOMText, (void**)&nstext);
    FUNC0(nsres == NS_OK);

    nsres = FUNC2(nstext, &ret);
    FUNC3(nstext);
    FUNC0(nsres == NS_OK);

    return ret;
}