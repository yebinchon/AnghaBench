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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int*,int const*,int) ; 
 scalar_t__ FUNC2 (int const*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const**,int) ; 

__attribute__((used)) static bool FUNC4(stream_t *s)
{
    const uint8_t *header;
    int size = FUNC3(s, &header, 256);
    int position = 0;

    if (FUNC1(&position, header, size) != 0xd8 || position > size-2)
        return false;
    if (FUNC1(&position, header, position + 2) != 0xe0)
        return false;

    if (position + 2 > size)
        return false;

    /* Skip this jpeg header */
    uint32_t header_size = FUNC0(&header[position]);
    position += header_size;

    /* Get enough data to analyse the next header */
    if (position + 6 > size)
    {
        size = position + 6;
        if( FUNC3 (s, &header, size) < size )
            return false;
    }

    if ( !(header[position] == 0xFF && header[position+1] == 0xFE) )
        return false;
    position += 2;
    header_size = FUNC0 (&header[position]);

    /* Check if this is a MXF header. We may have a jpeg comment first */
    if (!FUNC2 (&header[position+2], "MXF\0", 4) )
        return true;

    /* Skip the jpeg comment and find the MXF header after that */
    size = position + header_size + 8; //8 = FF FE 00 00 M X F 00
    if (FUNC3(s, &header, size ) < size)
        return false;

    position += header_size;
    if ( !(header[position] == 0xFF && header[position+1] == 0xFE) )
        return false;

    position += 4;

    if (FUNC2 (&header[position], "MXF\0", 4) )
        return false;

    return true;
}