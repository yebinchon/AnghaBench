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
typedef  scalar_t__ TableDataType ;
struct TYPE_4__ {scalar_t__ type; size_t minimum_width; size_t maximum_width; unsigned int weight; unsigned int align_percent; unsigned int ellipsize_percent; void const* data; scalar_t__ uppercase; scalar_t__ url; scalar_t__ color; } ;
typedef  TYPE_1__ TableData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (void const*,void const*,size_t) ; 
 size_t FUNC2 (scalar_t__,void const*) ; 

__attribute__((used)) static bool FUNC3(
                TableData *d,
                TableDataType type,
                const void *data,
                size_t minimum_width,
                size_t maximum_width,
                unsigned weight,
                unsigned align_percent,
                unsigned ellipsize_percent) {

        size_t k, l;
        FUNC0(d);

        if (d->type != type)
                return false;

        if (d->minimum_width != minimum_width)
                return false;

        if (d->maximum_width != maximum_width)
                return false;

        if (d->weight != weight)
                return false;

        if (d->align_percent != align_percent)
                return false;

        if (d->ellipsize_percent != ellipsize_percent)
                return false;

        /* If a color/url/uppercase flag is set, refuse to merge */
        if (d->color)
                return false;
        if (d->url)
                return false;
        if (d->uppercase)
                return false;

        k = FUNC2(type, data);
        l = FUNC2(d->type, d->data);

        if (k != l)
                return false;

        return FUNC1(data, d->data, l) == 0;
}