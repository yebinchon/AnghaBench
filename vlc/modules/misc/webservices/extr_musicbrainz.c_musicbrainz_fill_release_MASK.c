#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t i_tracks; void* psz_date; void* psz_artist; void* psz_group_id; void* psz_id; void* psz_title; int /*<<< orphan*/ * p_tracks; } ;
typedef  TYPE_3__ musicbrainz_release_t ;
struct TYPE_12__ {scalar_t__ length; TYPE_4__ const** values; } ;
struct TYPE_13__ {TYPE_1__ array; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_4__ const json_value ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int) ; 
 scalar_t__ json_array ; 
 void* FUNC1 (TYPE_4__ const*,char*) ; 
 TYPE_4__ const* FUNC2 (TYPE_4__ const*,char*) ; 
 void* FUNC3 (TYPE_4__ const*) ; 
 scalar_t__ FUNC4 (TYPE_4__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(const json_value *releasenode, musicbrainz_release_t *r)
{
    const json_value *media = FUNC2(releasenode, "media");
    if(!media || media->type != json_array ||
       media->u.array.length == 0)
        return false;
    /* we always use first media */
    media = media->u.array.values[0];

    const json_value *tracks = FUNC2(media, "tracks");
    if(!tracks || tracks->type != json_array ||
       tracks->u.array.length == 0)
        return false;

    r->p_tracks = FUNC0(tracks->u.array.length, sizeof(*r->p_tracks));
    if(!r->p_tracks)
        return false;

    for(size_t i=0; i<tracks->u.array.length; i++)
    {
        if(FUNC4(tracks->u.array.values[i], &r->p_tracks[r->i_tracks]))
            r->i_tracks++;
    }

    r->psz_title = FUNC1(releasenode, "title");
    r->psz_id = FUNC1(releasenode, "id");

    const json_value *rgnode = FUNC2(releasenode, "release-group");
    if(rgnode)
    {
        r->psz_date = FUNC1(rgnode, "first-release-date");
        r->psz_group_id = FUNC1(rgnode, "id");

        const json_value *node = FUNC2(rgnode, "artist-credit");
        if(node)
            r->psz_artist = FUNC3(node);
    }
    else
    {
        const json_value *node = FUNC2(releasenode, "artist-credit");
        if(node)
            r->psz_artist = FUNC3(node);

        node = FUNC2(releasenode, "release-events");
        if(node && node->type == json_array && node->u.array.length)
            r->psz_date = FUNC1(node->u.array.values[0], "date");
    }


    return true;
}