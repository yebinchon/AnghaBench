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
typedef  int* libvlc_media_list_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static inline void FUNC1( const libvlc_media_list_path_t path )
{
    if(!path)
    {
        FUNC0("NULL path\n");
        return;
    }

    for(int i = 0; path[i] != -1; i++)
        FUNC0("%s%d", i > 0 ? "/" : "", path[i]);
    FUNC0("\n");
}