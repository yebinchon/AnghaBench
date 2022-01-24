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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 char* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static bool FUNC6( stream_t *s )
{
    const uint8_t *peek;
    int i_size = FUNC5( s->s, &peek, 200 );
    if( i_size < 200 )
        return false;

    char *str;

    if( !FUNC2( peek, "\xFF\xFE", 2 ) )
    {
        str = FUNC0( "UTF-16LE", peek, i_size );
    }
    else if( !FUNC2( peek, "\xFE\xFF", 2 ) )
    {
        str = FUNC0( "UTF-16BE", peek, i_size );
    }
    else
        str = FUNC3( (const char *)peek, i_size );

    if( str == NULL )
        return false;

    bool ret = FUNC4( str, "<manifest" ) != NULL;
    FUNC1( str );
    return ret;
}