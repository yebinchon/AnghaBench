#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlParserCtxtPtr ;
typedef  TYPE_3__* xmlEntityPtr ;
typedef  char xmlChar ;
struct TYPE_15__ {scalar_t__ etype; } ;
struct TYPE_14__ {scalar_t__ instate; int standalone; scalar_t__ hasExternalSubset; int hasPErefs; scalar_t__ valid; int /*<<< orphan*/  userData; TYPE_1__* sax; int /*<<< orphan*/  nbentities; } ;
struct TYPE_13__ {TYPE_3__* (* getParameterEntity ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XML_ERR_ENTITYREF_SEMICOL_MISSING ; 
 int /*<<< orphan*/  XML_ERR_NAME_REQUIRED ; 
 int /*<<< orphan*/  XML_ERR_UNDECLARED_ENTITY ; 
 scalar_t__ XML_EXTERNAL_PARAMETER_ENTITY ; 
 scalar_t__ XML_INTERNAL_PARAMETER_ENTITY ; 
 scalar_t__ XML_PARSER_EOF ; 
 int /*<<< orphan*/  XML_WAR_UNDECLARED_ENTITY ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (TYPE_2__*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlEntityPtr
FUNC8(xmlParserCtxtPtr ctxt, const xmlChar **str) {
    const xmlChar *ptr;
    xmlChar cur;
    xmlChar *name;
    xmlEntityPtr entity = NULL;

    if ((str == NULL) || (*str == NULL)) return(NULL);
    ptr = *str;
    cur = *ptr;
    if (cur != '%')
        return(NULL);
    ptr++;
    name = FUNC5(ctxt, &ptr);
    if (name == NULL) {
	FUNC2(ctxt, XML_ERR_NAME_REQUIRED,
		       "xmlParseStringPEReference: no name\n");
	*str = ptr;
	return(NULL);
    }
    cur = *ptr;
    if (cur != ';') {
	FUNC1(ctxt, XML_ERR_ENTITYREF_SEMICOL_MISSING, NULL);
	FUNC4(name);
	*str = ptr;
	return(NULL);
    }
    ptr++;

    /*
     * Increate the number of entity references parsed
     */
    ctxt->nbentities++;

    /*
     * Request the entity from SAX
     */
    if ((ctxt->sax != NULL) &&
	(ctxt->sax->getParameterEntity != NULL))
	entity = ctxt->sax->getParameterEntity(ctxt->userData, name);
    if (ctxt->instate == XML_PARSER_EOF) {
	FUNC4(name);
	*str = ptr;
	return(NULL);
    }
    if (entity == NULL) {
	/*
	 * [ WFC: Entity Declared ]
	 * In a document without any DTD, a document with only an
	 * internal DTD subset which contains no parameter entity
	 * references, or a document with "standalone='yes'", ...
	 * ... The declaration of a parameter entity must precede
	 * any reference to it...
	 */
	if ((ctxt->standalone == 1) ||
	    ((ctxt->hasExternalSubset == 0) && (ctxt->hasPErefs == 0))) {
	    FUNC3(ctxt, XML_ERR_UNDECLARED_ENTITY,
		 "PEReference: %%%s; not found\n", name);
	} else {
	    /*
	     * [ VC: Entity Declared ]
	     * In a document with an external subset or external
	     * parameter entities with "standalone='no'", ...
	     * ... The declaration of a parameter entity must
	     * precede any reference to it...
	     */
	    FUNC7(ctxt, XML_WAR_UNDECLARED_ENTITY,
			  "PEReference: %%%s; not found\n",
			  name, NULL);
	    ctxt->valid = 0;
	}
	FUNC6(ctxt, 0, NULL, 0);
    } else {
	/*
	 * Internal checking in case the entity quest barfed
	 */
	if ((entity->etype != XML_INTERNAL_PARAMETER_ENTITY) &&
	    (entity->etype != XML_EXTERNAL_PARAMETER_ENTITY)) {
	    FUNC7(ctxt, XML_WAR_UNDECLARED_ENTITY,
			  "%%%s; is not a parameter entity\n",
			  name, NULL);
	}
    }
    ctxt->hasPErefs = 1;
    FUNC4(name);
    *str = ptr;
    return(entity);
}