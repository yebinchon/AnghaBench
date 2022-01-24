#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlParserErrors ;
typedef  TYPE_1__* xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_5__ {scalar_t__ errNo; int /*<<< orphan*/  instate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,float,char,char,char,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char,char,char,char,unsigned char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ SKIP_BLANKS ; 
 int XML_ATTRIBUTE_FIXED ; 
 int XML_ATTRIBUTE_IMPLIED ; 
 int XML_ATTRIBUTE_NONE ; 
 int XML_ATTRIBUTE_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_SPACE_REQUIRED ; 
 int /*<<< orphan*/  XML_PARSER_DTD ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

int
FUNC6(xmlParserCtxtPtr ctxt, xmlChar **value) {
    int val;
    xmlChar *ret;

    *value = NULL;
    if (FUNC2(CUR_PTR, '#', 'R', 'E', 'Q', 'U', 'I', 'R', 'E', 'D')) {
	FUNC3(9);
	return(XML_ATTRIBUTE_REQUIRED);
    }
    if (FUNC1(CUR_PTR, '#', 'I', 'M', 'P', 'L', 'I', 'E', 'D')) {
	FUNC3(8);
	return(XML_ATTRIBUTE_IMPLIED);
    }
    val = XML_ATTRIBUTE_NONE;
    if (FUNC0(CUR_PTR, '#', 'F', 'I', 'X', 'E', 'D')) {
	FUNC3(6);
	val = XML_ATTRIBUTE_FIXED;
	if (SKIP_BLANKS == 0) {
	    FUNC4(ctxt, XML_ERR_SPACE_REQUIRED,
			   "Space required after '#FIXED'\n");
	}
    }
    ret = FUNC5(ctxt);
    ctxt->instate = XML_PARSER_DTD;
    if (ret == NULL) {
	FUNC4(ctxt, (xmlParserErrors)ctxt->errNo,
		       "Attribute default value declaration error\n");
    } else
        *value = ret;
    return(val);
}