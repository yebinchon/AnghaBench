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
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

void
FUNC3(xmlNodePtr cur, const xmlChar *content) {
    int len;

    if (cur == NULL) {
#ifdef DEBUG_TREE
        xmlGenericError(xmlGenericErrorContext,
		"xmlNodeAddContent : node == NULL\n");
#endif
	return;
    }
    if (content == NULL) return;
    len = FUNC2(content);
    FUNC1(cur, content, len);
}