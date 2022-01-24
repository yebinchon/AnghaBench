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
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  int /*<<< orphan*/  xmlEnumerationPtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char,char,char,char,float) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char,char,char,char,char,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char,char,char,char,char,char,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  CUR_PTR ; 
 char FUNC4 (int) ; 
 char RAW ; 
 int /*<<< orphan*/  SHRINK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int XML_ATTRIBUTE_CDATA ; 
 int XML_ATTRIBUTE_ENTITIES ; 
 int XML_ATTRIBUTE_ENTITY ; 
 int XML_ATTRIBUTE_ID ; 
 int XML_ATTRIBUTE_IDREF ; 
 int XML_ATTRIBUTE_IDREFS ; 
 int XML_ATTRIBUTE_NMTOKEN ; 
 int XML_ATTRIBUTE_NMTOKENS ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(xmlParserCtxtPtr ctxt, xmlEnumerationPtr *tree) {
    SHRINK;
    if (FUNC0(CUR_PTR, 'C', 'D', 'A', 'T', 'A')) {
	FUNC5(5);
	return(XML_ATTRIBUTE_CDATA);
     } else if (FUNC1(CUR_PTR, 'I', 'D', 'R', 'E', 'F', 'S')) {
	FUNC5(6);
	return(XML_ATTRIBUTE_IDREFS);
     } else if (FUNC0(CUR_PTR, 'I', 'D', 'R', 'E', 'F')) {
	FUNC5(5);
	return(XML_ATTRIBUTE_IDREF);
     } else if ((RAW == 'I') && (FUNC4(1) == 'D')) {
        FUNC5(2);
	return(XML_ATTRIBUTE_ID);
     } else if (FUNC1(CUR_PTR, 'E', 'N', 'T', 'I', 'T', 'Y')) {
	FUNC5(6);
	return(XML_ATTRIBUTE_ENTITY);
     } else if (FUNC3(CUR_PTR, 'E', 'N', 'T', 'I', 'T', 'I', 'E', 'S')) {
	FUNC5(8);
	return(XML_ATTRIBUTE_ENTITIES);
     } else if (FUNC3(CUR_PTR, 'N', 'M', 'T', 'O', 'K', 'E', 'N', 'S')) {
	FUNC5(8);
	return(XML_ATTRIBUTE_NMTOKENS);
     } else if (FUNC2(CUR_PTR, 'N', 'M', 'T', 'O', 'K', 'E', 'N')) {
	FUNC5(7);
	return(XML_ATTRIBUTE_NMTOKEN);
     }
     return(FUNC6(ctxt, tree));
}