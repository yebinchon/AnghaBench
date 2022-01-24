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
typedef  int /*<<< orphan*/  xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/ * xmlAttrPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

xmlAttrPtr
FUNC2(xmlNodePtr node, xmlNsPtr ns, const xmlChar *name,
           const xmlChar *value) {

    if (name == NULL) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlNewNsProp : name == NULL\n");
#endif
	return(NULL);
    }

    return FUNC1(node, ns, name, value, 0);
}