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
struct chmPmglHeader {int /*<<< orphan*/ * free_space; } ;
typedef  int UInt64 ;
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int CHM_MAX_PATHLEN ; 
 unsigned int _CHM_PMGL_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int*,int,struct chmPmglHeader*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static UChar *FUNC5(UChar *page_buf,
                         UInt32 block_len,
                         const char *objPath)
{
    /* XXX: modify this to do a binary search using the nice index structure
     *      that is provided for us.
     */
    struct chmPmglHeader header;
    unsigned int hremain;
    UChar *end;
    UChar *cur;
    UChar *temp;
    UInt64 strLen;
    char buffer[CHM_MAX_PATHLEN+1];

    /* figure out where to start and end */
    cur = page_buf;
    hremain = _CHM_PMGL_LEN;
    if (! FUNC3(&cur, &hremain, block_len, &header))
        return NULL;
    end = page_buf + block_len - (header.free_space);

    /* now, scan progressively */
    while (cur < end)
    {
        /* grab the name */
        temp = cur;
        strLen = FUNC1(&cur);
        if (strLen > CHM_MAX_PATHLEN)
            return NULL;
        if (! FUNC0(&cur, strLen, buffer))
            return NULL;

        /* check if it is the right name */
        if (! FUNC4(buffer, objPath))
            return temp;

        FUNC2(&cur);
    }

    return NULL;
}