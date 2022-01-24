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
struct TYPE_3__ {int /*<<< orphan*/  psz_mb_id; int /*<<< orphan*/  psz_shortbio; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  thumbnails; } ;
typedef  TYPE_1__ vlc_ml_artist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( vlc_ml_artist_t* p_artist )
{
    FUNC1( p_artist->thumbnails );
    FUNC0( p_artist->psz_name );
    FUNC0( p_artist->psz_shortbio );
    FUNC0( p_artist->psz_mb_id );
}