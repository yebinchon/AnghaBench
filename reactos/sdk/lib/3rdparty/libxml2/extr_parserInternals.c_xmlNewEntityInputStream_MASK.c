#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputPtr ;
typedef  int /*<<< orphan*/  xmlParserCtxtPtr ;
typedef  TYPE_2__* xmlEntityPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {int etype; scalar_t__ length; int /*<<< orphan*/ * content; int /*<<< orphan*/ * URI; int /*<<< orphan*/ * name; scalar_t__ ExternalID; } ;
struct TYPE_7__ {char* filename; scalar_t__ length; int /*<<< orphan*/ * end; int /*<<< orphan*/ * cur; int /*<<< orphan*/ * base; } ;

/* Variables and functions */
#define  XML_EXTERNAL_GENERAL_PARSED_ENTITY 133 
#define  XML_EXTERNAL_GENERAL_UNPARSED_ENTITY 132 
#define  XML_EXTERNAL_PARAMETER_ENTITY 131 
#define  XML_INTERNAL_GENERAL_ENTITY 130 
#define  XML_INTERNAL_PARAMETER_ENTITY 129 
#define  XML_INTERNAL_PREDEFINED_ENTITY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 TYPE_1__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ xmlParserDebugEntities ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

xmlParserInputPtr
FUNC6(xmlParserCtxtPtr ctxt, xmlEntityPtr entity) {
    xmlParserInputPtr input;

    if (entity == NULL) {
        FUNC0(ctxt, "xmlNewEntityInputStream entity = NULL\n",
	               NULL);
	return(NULL);
    }
    if (xmlParserDebugEntities)
	FUNC1(xmlGenericErrorContext,
		"new input from entity: %s\n", entity->name);
    if (entity->content == NULL) {
	switch (entity->etype) {
            case XML_EXTERNAL_GENERAL_UNPARSED_ENTITY:
	        FUNC0(ctxt, "Cannot parse entity %s\n",
		               entity->name);
                break;
            case XML_EXTERNAL_GENERAL_PARSED_ENTITY:
            case XML_EXTERNAL_PARAMETER_ENTITY:
		return(FUNC2((char *) entity->URI,
		       (char *) entity->ExternalID, ctxt));
            case XML_INTERNAL_GENERAL_ENTITY:
	        FUNC0(ctxt,
		      "Internal entity %s without content !\n",
		               entity->name);
                break;
            case XML_INTERNAL_PARAMETER_ENTITY:
	        FUNC0(ctxt,
		      "Internal parameter entity %s without content !\n",
		               entity->name);
                break;
            case XML_INTERNAL_PREDEFINED_ENTITY:
	        FUNC0(ctxt,
		      "Predefined entity %s without content !\n",
		               entity->name);
                break;
	}
	return(NULL);
    }
    input = FUNC3(ctxt);
    if (input == NULL) {
	return(NULL);
    }
    if (entity->URI != NULL)
	input->filename = (char *) FUNC4((xmlChar *) entity->URI);
    input->base = entity->content;
    if (entity->length == 0)
        entity->length = FUNC5(entity->content);
    input->cur = entity->content;
    input->length = entity->length;
    input->end = &entity->content[input->length];
    return(input);
}