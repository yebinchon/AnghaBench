#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * psz_url; } ;
typedef  TYPE_1__ stream_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/  const*,int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static bool FUNC3(stream_t *s)
{
    if (s->psz_url == NULL)
        return false;

    char *ext = FUNC1(s->psz_url, ".svg");
    if (!ext) return false;

    const uint8_t *header;
    ssize_t size = FUNC2(s, &header, 4096);
    if (size == -1)
        return false;
    int position = 0;

    const char xml[] = "<?xml version=\"";
    if (!FUNC0(&position, header, size, xml))
        return false;
    if (position != 0)
        return false;

    const char endxml[] = ">\0";
    if (!FUNC0(&position, header, size, endxml))
        return false;
    if (position <= 15)
        return false;

    const char svg[] = "<svg";
    if (!FUNC0(&position, header, size, svg))
        return false;
    if (position < 19)
        return false;

    /* SVG Scalable Vector Graphics image */

    /* NOTE: some SVG images have the mimetype set in a meta data section
     * and some do not */
    return true;
}