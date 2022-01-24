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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  vlc_meta_Album ; 
 int /*<<< orphan*/  vlc_meta_Artist ; 
 int /*<<< orphan*/  vlc_meta_Date ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char* FUNC5( input_item_t* item )
{
    FUNC3( &item->lock );

    if( !item->p_meta )
    {
        FUNC4( &item->lock );
        return NULL;
    }

    char const* artist = FUNC2( item->p_meta, vlc_meta_Artist );
    char const* album = FUNC2( item->p_meta, vlc_meta_Album );
    char const *date = FUNC2( item->p_meta, vlc_meta_Date );
    char* key;

    /**
     * Simple concatenation of artist and album can lead to the same key
     * for entities that should not have such. Imagine { dogs, tick } and
     * { dog, stick } */
    if( !artist || !album || FUNC0( &key, "%s:%d:%s:%d:%s",
          artist, FUNC1( artist ), album, FUNC1( album ),
          date ? date : "0000" ) < 0 )
    {
        key = NULL;
    }
    FUNC4( &item->lock );

    return key;
}