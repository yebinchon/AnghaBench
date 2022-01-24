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
typedef  size_t XmlWriterProperty ;

/* Variables and functions */
 size_t _XmlWriterProperty_Last ; 
 char const* FUNC0 (char*,size_t) ; 

__attribute__((used)) static const char *FUNC1(XmlWriterProperty prop)
{
    static const char * const prop_names[] =
    {
        "MultiLanguage",
        "Indent",
        "ByteOrderMark",
        "OmitXmlDeclaration",
        "ConformanceLevel"
    };

    if (prop > _XmlWriterProperty_Last)
        return FUNC0("unknown property=%d", prop);

    return prop_names[prop];
}