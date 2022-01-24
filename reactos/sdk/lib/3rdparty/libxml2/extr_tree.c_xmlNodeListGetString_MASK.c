#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; char* content; char* name; struct TYPE_7__* next; TYPE_1__* parent; } ;
typedef  TYPE_2__ xmlNode ;
typedef  TYPE_3__* xmlEntityPtr ;
typedef  int /*<<< orphan*/  xmlDocPtr ;
typedef  char xmlChar ;
struct TYPE_8__ {TYPE_2__* children; } ;
struct TYPE_6__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ XML_ATTRIBUTE_NODE ; 
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_ENTITY_REF_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char*,int) ; 

xmlChar *
FUNC7(xmlDocPtr doc, const xmlNode *list, int inLine)
{
    const xmlNode *node = list;
    xmlChar *ret = NULL;
    xmlEntityPtr ent;
    int attr;

    if (list == NULL)
        return (NULL);
    if ((list->parent != NULL) && (list->parent->type == XML_ATTRIBUTE_NODE))
        attr = 1;
    else
        attr = 0;

    while (node != NULL) {
        if ((node->type == XML_TEXT_NODE) ||
            (node->type == XML_CDATA_SECTION_NODE)) {
            if (inLine) {
                ret = FUNC5(ret, node->content);
            } else {
                xmlChar *buffer;

		if (attr)
		    buffer = FUNC0(doc, node->content);
		else
		    buffer = FUNC1(doc, node->content);
                if (buffer != NULL) {
                    ret = FUNC5(ret, buffer);
                    FUNC2(buffer);
                }
            }
        } else if (node->type == XML_ENTITY_REF_NODE) {
            if (inLine) {
                ent = FUNC4(doc, node->name);
                if (ent != NULL) {
                    xmlChar *buffer;

                    /* an entity content can be any "well balanced chunk",
                     * i.e. the result of the content [43] production:
                     * http://www.w3.org/TR/REC-xml#NT-content.
                     * So it can contain text, CDATA section or nested
                     * entity reference nodes (among others).
                     * -> we recursive  call xmlNodeListGetString()
                     * which handles these types */
                    buffer = FUNC7(doc, ent->children, 1);
                    if (buffer != NULL) {
                        ret = FUNC5(ret, buffer);
                        FUNC2(buffer);
                    }
                } else {
                    ret = FUNC5(ret, node->content);
                }
            } else {
                xmlChar buf[2];

                buf[0] = '&';
                buf[1] = 0;
                ret = FUNC6(ret, buf, 1);
                ret = FUNC5(ret, node->name);
                buf[0] = ';';
                buf[1] = 0;
                ret = FUNC6(ret, buf, 1);
            }
        }
#if 0
        else {
            xmlGenericError(xmlGenericErrorContext,
                            "xmlGetNodeListString : invalid node type %d\n",
                            node->type);
        }
#endif
        node = node->next;
    }
    return (ret);
}