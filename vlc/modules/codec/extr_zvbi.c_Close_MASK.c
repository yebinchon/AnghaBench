#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_7__ {scalar_t__ p_vbi_dec; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Opaque ; 
 int /*<<< orphan*/  RequestPage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*) p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    FUNC1( p_dec, "vbi-opaque", Opaque, p_sys );
    FUNC1( p_dec, "vbi-page", RequestPage, p_sys );

    FUNC3( &p_sys->lock );

    if( p_sys->p_vbi_dec )
        FUNC2( p_sys->p_vbi_dec );
    FUNC0( p_sys );
}