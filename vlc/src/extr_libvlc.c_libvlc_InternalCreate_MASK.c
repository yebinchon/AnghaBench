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
typedef  int /*<<< orphan*/ * vlc_custom_create ;
struct TYPE_3__ {int /*<<< orphan*/  exit; int /*<<< orphan*/ * media_source_provider; int /*<<< orphan*/ * p_vlm; int /*<<< orphan*/ * main_playlist; int /*<<< orphan*/ * interfaces; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

libvlc_int_t * FUNC3( void )
{
    libvlc_int_t *p_libvlc;
    libvlc_priv_t *priv;

    /* Allocate a libvlc instance object */
    p_libvlc = (vlc_custom_create)( NULL, sizeof (*priv), "libvlc" );
    if( p_libvlc == NULL )
        return NULL;

    priv = FUNC0 (p_libvlc);
    FUNC2(&priv->lock);
    priv->interfaces = NULL;
    priv->main_playlist = NULL;
    priv->p_vlm = NULL;
    priv->media_source_provider = NULL;

    FUNC1( &priv->exit );

    return p_libvlc;
}