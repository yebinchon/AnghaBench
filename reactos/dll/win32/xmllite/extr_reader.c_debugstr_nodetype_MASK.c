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
typedef  size_t XmlNodeType ;

/* Variables and functions */
 size_t _XmlNodeType_Last ; 
 char const* FUNC0 (char*,size_t) ; 

__attribute__((used)) static const char *FUNC1(XmlNodeType nodetype)
{
    static const char * const type_names[] =
    {
        "None",
        "Element",
        "Attribute",
        "Text",
        "CDATA",
        "",
        "",
        "ProcessingInstruction",
        "Comment",
        "",
        "DocumentType",
        "",
        "",
        "Whitespace",
        "",
        "EndElement",
        "",
        "XmlDeclaration"
    };

    if (nodetype > _XmlNodeType_Last)
        return FUNC0("unknown type=%d", nodetype);

    return type_names[nodetype];
}