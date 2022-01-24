#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_module; } ;
typedef  TYPE_1__ fingerprinter_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

fingerprinter_thread_t *FUNC4( vlc_object_t *p_this )
{
    fingerprinter_thread_t *p_fingerprint;

    p_fingerprint = ( fingerprinter_thread_t * )
            FUNC2( p_this, sizeof( *p_fingerprint ), "fingerprinter" );
    if( !p_fingerprint )
    {
        FUNC1( p_this, "unable to create fingerprinter" );
        return NULL;
    }

    p_fingerprint->p_module = FUNC0( p_fingerprint, "fingerprinter",
                                           NULL, false );
    if( !p_fingerprint->p_module )
    {
        FUNC3(p_fingerprint);
        FUNC1( p_this, "AcoustID fingerprinter not found" );
        return NULL;
    }

    return p_fingerprint;
}