#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlNs ;
typedef  TYPE_2__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_7__ {TYPE_1__* oldNs; } ;
struct TYPE_6__ {void* prefix; void* href; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_LOCAL_NAMESPACE ; 
 int /*<<< orphan*/  const* XML_XML_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static xmlNsPtr
FUNC4(xmlDocPtr doc)
{
    if (doc == NULL)
	return (NULL);
    if (doc->oldNs != NULL)
	return (doc->oldNs);
    {
	xmlNsPtr ns;
	ns = (xmlNsPtr) FUNC1(sizeof(xmlNs));
	if (ns == NULL) {
	    FUNC3(
		"allocating the XML namespace");
	    return (NULL);
	}
	FUNC0(ns, 0, sizeof(xmlNs));
	ns->type = XML_LOCAL_NAMESPACE;
	ns->href = FUNC2(XML_XML_NAMESPACE);
	ns->prefix = FUNC2((const xmlChar *)"xml");
	doc->oldNs = ns;
	return (ns);
    }
}