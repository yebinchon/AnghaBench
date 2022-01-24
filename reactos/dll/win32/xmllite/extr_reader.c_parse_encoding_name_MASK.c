#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_encoding ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  enc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  XmlEncoding_Unknown ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* xml_encoding_map ; 

xml_encoding FUNC3(const WCHAR *name, int len)
{
    int min, max, n, c;

    if (!name) return XmlEncoding_Unknown;

    min = 0;
    max = FUNC0(xml_encoding_map) - 1;

    while (min <= max)
    {
        n = (min+max)/2;

        if (len != -1)
            c = FUNC2(xml_encoding_map[n].name, name, len);
        else
            c = FUNC1(xml_encoding_map[n].name, name);
        if (!c)
            return xml_encoding_map[n].enc;

        if (c > 0)
            max = n-1;
        else
            min = n+1;
    }

    return XmlEncoding_Unknown;
}