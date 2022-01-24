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
struct md5_s {int dummy; } ;
struct TYPE_2__ {char* psz_md5; scalar_t__ psz_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md5_s*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* md5_samples ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 char* FUNC6 (struct md5_s*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9()
{
    for( int i = 0; md5_samples[i].psz_string; i++ )
    {
        struct md5_s md5;
        FUNC2( &md5 );
        FUNC0( &md5, md5_samples[i].psz_string, FUNC8( md5_samples[i].psz_string ) );
        FUNC1( &md5 );
        char * psz_hash = FUNC6( &md5 );

        if( FUNC7( psz_hash, md5_samples[i].psz_md5 ) )
        {
            FUNC5( "Output: %s\nExpected: %s\n", psz_hash,
                    md5_samples[i].psz_md5 );
            FUNC3();
        }
        FUNC4( psz_hash );
    }
}