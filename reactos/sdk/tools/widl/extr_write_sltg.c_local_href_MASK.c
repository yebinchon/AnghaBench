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
struct sltg_hrefmap {int href_count; int* href; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int* FUNC1 (int) ; 
 int* FUNC2 (int*,int) ; 

__attribute__((used)) static int FUNC3(struct sltg_hrefmap *hrefmap, int typelib_href)
{
    int i, href = -1;

    for (i = 0; i < hrefmap->href_count; i++)
    {
        if (hrefmap->href[i] == typelib_href)
        {
            href = i;
            break;
        }
    }

    if (href == -1)
    {
        href = hrefmap->href_count;

        if (hrefmap->href)
            hrefmap->href = FUNC2(hrefmap->href, sizeof(*hrefmap->href) * (hrefmap->href_count + 1));
        else
            hrefmap->href = FUNC1(sizeof(*hrefmap->href));

        hrefmap->href[hrefmap->href_count] = typelib_href;
        hrefmap->href_count++;
    }

    FUNC0("typelib href %d mapped to local href %d\n", typelib_href, href);

    return href << 2;
}