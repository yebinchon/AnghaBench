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
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int const**,size_t*) ; 
 char* FUNC1 (int const*,int) ; 
 char* FUNC2 (int const*,int) ; 
 char* FUNC3 (int const*,int) ; 

__attribute__((used)) static char *FUNC4(const uint8_t **restrict datap,
                              size_t *restrict lengthp)
{
    if (*lengthp < 1)
    {
        errno = EINVAL;
        return NULL;
    }

    bool huffman = ((*datap)[0] & 0x80) != 0;
    int_fast32_t len = FUNC0(7, datap, lengthp);
    if (len < 0)
        return NULL;

    if ((size_t)len > *lengthp)
    {
        errno = EINVAL;
        return NULL;
    }

    if (len > 65535) /* Stick to a sane limit */
    {
        errno = ERANGE;
        return NULL;
    }

    const uint8_t *buf = *datap;

    *datap += len;
    *lengthp -= len;

    return (huffman ? hpack_decode_str_huffman : hpack_decode_str_raw)
            (buf, len);
}