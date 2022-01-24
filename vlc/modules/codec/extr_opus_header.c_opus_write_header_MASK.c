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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  header_data ;
typedef  int /*<<< orphan*/  OpusHeader ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char const**) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*,char*) ; 
 char* FUNC2 (size_t*,char const*) ; 
 scalar_t__ FUNC3 (char**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC6 (int*,void**,size_t,unsigned char const*) ; 

int FUNC7(uint8_t **p_extra, int *i_extra, OpusHeader *header, const char *vendor)
{
    unsigned char header_data[100];
    const int packet_size = FUNC5(header, header_data,
                                                  sizeof(header_data));

    const unsigned char *data[2];
    size_t size[2];

    data[0] = header_data;
    size[0] = packet_size;

    size_t comments_length;
    char *comments = FUNC2(&comments_length, vendor);
    if (!comments)
        return 1;
    if (FUNC1(&comments, &comments_length, "ENCODER=",
                    "VLC media player"))
    {
        FUNC4(comments);
        return 1;
    }

    if (FUNC3(&comments, &comments_length))
    {
        FUNC4(comments);
        return 1;
    }

    data[1] = (unsigned char *) comments;
    size[1] = comments_length;

    *i_extra = 0;
    *p_extra = NULL;

    for (unsigned i = 0; i < FUNC0(data); ++i)
    {
        if (FUNC6(i_extra, (void **) p_extra, size[i], data[i]))
        {
            *i_extra = 0;
            FUNC4(*p_extra);
            *p_extra = NULL;
        }
    }

    FUNC4(comments);

    return 0;
}