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
struct vlc_playlist_item_meta {scalar_t__ url; scalar_t__ genre; scalar_t__ album_artist; scalar_t__ album; scalar_t__ artist; scalar_t__ title_or_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1(struct vlc_playlist_item_meta *meta)
{
    FUNC0((void *) meta->title_or_name);
    FUNC0((void *) meta->artist);
    FUNC0((void *) meta->album);
    FUNC0((void *) meta->album_artist);
    FUNC0((void *) meta->genre);
    FUNC0((void *) meta->url);
}