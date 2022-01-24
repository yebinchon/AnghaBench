#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int no_interact; struct vlc_logger* logger; } ;
typedef  TYPE_1__ vlc_object_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_8__ {int /*<<< orphan*/ * p_picture; } ;
typedef  TYPE_2__ subpicture_region_t ;
struct vlc_logger {int dummy; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline subpicture_region_t *
FUNC5( vlc_object_t *p_this, video_format_t *p_fmt,
                             const char *psz_uri )
{
    picture_t *p_pic = NULL;
    struct vlc_logger *logger = p_this->logger;
    bool no_interact = p_this->no_interact;
    p_this->logger = NULL;
    p_this->no_interact = true;
    image_handler_t *p_image = FUNC0( p_this );
    if( p_image )
    {
        p_pic = FUNC2( p_image, psz_uri, p_fmt );
        FUNC1( p_image );
    }
    p_this->no_interact = no_interact;
    p_this->logger = logger;

    if(!p_pic)
        return NULL;

    subpicture_region_t *region = FUNC4(p_fmt);
    if (!region)
    {
        FUNC3( p_pic );
        return NULL;
    }

    FUNC3( region->p_picture );
    region->p_picture = p_pic;

    return region;
}