#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pf_catalog_add; int /*<<< orphan*/  pf_catalog_load; } ;
typedef  TYPE_1__ xml_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  CatalogAdd ; 
 int /*<<< orphan*/  CatalogLoad ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  XML_WITH_THREAD ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4( vlc_object_t *p_this )
{
    xml_t *p_xml = (xml_t *)p_this;

    if( !FUNC2( XML_WITH_THREAD ) )
        return VLC_EGENERIC;

    FUNC0( &lock );
    FUNC3();
    FUNC1( &lock );

    p_xml->pf_catalog_load = CatalogLoad;
    p_xml->pf_catalog_add  = CatalogAdd;

    return VLC_SUCCESS;
}