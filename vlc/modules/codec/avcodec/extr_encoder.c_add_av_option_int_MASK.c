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
typedef  int /*<<< orphan*/  encoder_t ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3( encoder_t *p_enc, AVDictionary** pp_dict, const char* psz_name, int i_value )
{
    char buff[32];
    if ( FUNC2( buff, sizeof(buff), "%d", i_value ) < 0 )
        return;
    if( FUNC0( pp_dict, psz_name, buff, 0 ) < 0 )
        FUNC1( p_enc, "Failed to set encoder option %s", psz_name );
}