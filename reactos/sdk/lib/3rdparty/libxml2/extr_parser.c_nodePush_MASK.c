#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  void* xmlNodePtr ;
struct TYPE_6__ {int nodeNr; int nodeMax; void** nodeTab; int options; void* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ERR_INTERNAL_ERROR ; 
 int XML_PARSE_HUGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned int xmlParserMaxDepth ; 
 scalar_t__ FUNC3 (void**,int) ; 

int
FUNC4(xmlParserCtxtPtr ctxt, xmlNodePtr value)
{
    if (ctxt == NULL) return(0);
    if (ctxt->nodeNr >= ctxt->nodeMax) {
        xmlNodePtr *tmp;

	tmp = (xmlNodePtr *) FUNC3(ctxt->nodeTab,
                                      ctxt->nodeMax * 2 *
                                      sizeof(ctxt->nodeTab[0]));
        if (tmp == NULL) {
            FUNC0(ctxt, NULL);
            return (-1);
        }
        ctxt->nodeTab = tmp;
	ctxt->nodeMax *= 2;
    }
    if ((((unsigned int) ctxt->nodeNr) > xmlParserMaxDepth) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
	FUNC1(ctxt, XML_ERR_INTERNAL_ERROR,
		 "Excessive depth in document: %d use XML_PARSE_HUGE option\n",
			  xmlParserMaxDepth);
	FUNC2(ctxt);
	return(-1);
    }
    ctxt->nodeTab[ctxt->nodeNr] = value;
    ctxt->node = value;
    return (ctxt->nodeNr++);
}