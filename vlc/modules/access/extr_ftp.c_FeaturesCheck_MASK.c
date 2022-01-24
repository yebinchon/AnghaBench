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
struct TYPE_2__ {int b_unicode; int b_authtls; int b_mlst; } ;
typedef  TYPE_1__ ftp_features_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 

__attribute__((used)) static void FUNC1( void *opaque, const char *feature )
{
    ftp_features_t *features = opaque;

    if( FUNC0( feature, "UTF8" ) != NULL )
        features->b_unicode = true;
    else
    if( FUNC0( feature, "AUTH TLS" ) != NULL )
        features->b_authtls = true;

    if( FUNC0( feature, "MLST" ) != NULL )
        features->b_mlst = true;
}