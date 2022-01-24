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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  od_descriptors_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*,int const**) ; 
 int FUNC1 (unsigned int*,int const**,int) ; 
#define  ODTag_ObjectDescrRemove 129 
#define  ODTag_ObjectDescrUpdate 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int const,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int const,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const,unsigned int const) ; 

void FUNC5( vlc_object_t *p_object, od_descriptors_t *p_ods,
                      unsigned i_data, const uint8_t *p_data )
{
    while( i_data )
    {
        const uint8_t i_tag = FUNC1( &i_data, &p_data, 1 );
        const unsigned i_length = FUNC0( &i_data, &p_data );
        if( !i_length || i_length > i_data )
            break;
        FUNC4( p_object, "Decode tag 0x%x length %d", i_tag, i_length );
        switch( i_tag )
        {
            case ODTag_ObjectDescrUpdate:
                FUNC3( p_object, p_ods, i_length, p_data );
                break;
            case ODTag_ObjectDescrRemove:
                FUNC2( p_object, p_ods, i_length, p_data );
                break;
            default:
                break;
        }
        p_data += i_length;
        i_data -= i_length;
    }
}