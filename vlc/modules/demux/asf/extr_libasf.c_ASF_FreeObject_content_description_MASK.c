#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  psz_rating; int /*<<< orphan*/  psz_description; int /*<<< orphan*/  psz_copyright; int /*<<< orphan*/  psz_artist; int /*<<< orphan*/  psz_title; } ;
struct TYPE_4__ {TYPE_2__ content_description; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_content_description_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( asf_object_t *p_obj)
{
    asf_object_content_description_t *p_cd = &p_obj->content_description;

    FUNC0( p_cd->psz_title );
    FUNC0( p_cd->psz_artist );
    FUNC0( p_cd->psz_copyright );
    FUNC0( p_cd->psz_description );
    FUNC0( p_cd->psz_rating );
}