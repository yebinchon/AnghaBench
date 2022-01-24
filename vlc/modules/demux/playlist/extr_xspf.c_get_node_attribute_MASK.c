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
typedef  int /*<<< orphan*/  xml_reader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static const char *FUNC2(xml_reader_t *p_xml_reader, const char *psz_name)
{
    const char *name, *value;
    while ((name = FUNC1(p_xml_reader, &value)) != NULL)
    {
        if (!FUNC0(name, psz_name))
            return value;
    }
    return NULL;
}