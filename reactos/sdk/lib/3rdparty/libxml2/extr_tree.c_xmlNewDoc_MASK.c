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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  TYPE_1__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlDoc ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_5__ {int standalone; int compression; int /*<<< orphan*/  charset; int /*<<< orphan*/  properties; scalar_t__ parseFlags; struct TYPE_5__* doc; int /*<<< orphan*/ * version; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_CHAR_ENCODING_UTF8 ; 
 int /*<<< orphan*/  XML_DOCUMENT_NODE ; 
 int /*<<< orphan*/  XML_DOC_USERBUILT ; 
 scalar_t__ __xmlRegisterCallbacks ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

xmlDocPtr
FUNC6(const xmlChar *version) {
    xmlDocPtr cur;

    if (version == NULL)
	version = (const xmlChar *) "1.0";

    /*
     * Allocate a new document and fill the fields.
     */
    cur = (xmlDocPtr) FUNC2(sizeof(xmlDoc));
    if (cur == NULL) {
	FUNC5("building doc");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xmlDoc));
    cur->type = XML_DOCUMENT_NODE;

    cur->version = FUNC4(version);
    if (cur->version == NULL) {
	FUNC5("building doc");
	FUNC1(cur);
	return(NULL);
    }
    cur->standalone = -1;
    cur->compression = -1; /* not initialized */
    cur->doc = cur;
    cur->parseFlags = 0;
    cur->properties = XML_DOC_USERBUILT;
    /*
     * The in memory encoding is always UTF8
     * This field will never change and would
     * be obsolete if not for binary compatibility.
     */
    cur->charset = XML_CHAR_ENCODING_UTF8;

    if ((__xmlRegisterCallbacks) && (&xmlRegisterNodeDefaultValue))
	FUNC3((xmlNodePtr)cur);
    return(cur);
}