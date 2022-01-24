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
typedef  int /*<<< orphan*/ * xmlDOMWrapCtxtPtr ;
typedef  int /*<<< orphan*/  xmlDOMWrapCtxt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

xmlDOMWrapCtxtPtr
FUNC3(void)
{
    xmlDOMWrapCtxtPtr ret;

    ret = FUNC1(sizeof(xmlDOMWrapCtxt));
    if (ret == NULL) {
	FUNC2("allocating DOM-wrapper context");
	return (NULL);
    }
    FUNC0(ret, 0, sizeof(xmlDOMWrapCtxt));
    return (ret);
}