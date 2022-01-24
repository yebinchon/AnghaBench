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
struct TYPE_2__ {size_t block_len; } ;
struct chmFile {size_t* cache_block_indices; size_t cache_num_blocks; int lzx_last_block; int /*<<< orphan*/  lzx_mutex; int /*<<< orphan*/  lzx_state; int /*<<< orphan*/  window_size; int /*<<< orphan*/  cache_mutex; int /*<<< orphan*/ ** cache_blocks; TYPE_1__ reset_table; } ;
typedef  size_t UInt64 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  scalar_t__ Int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t FUNC3 (struct chmFile*,size_t,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static Int64 FUNC6(struct chmFile *h,
                                    UChar *buf,
                                    UInt64 start,
                                    Int64 len)
{
    UInt64 nBlock, nOffset;
    UInt64 nLen;
    UInt64 gotLen;
    UChar *ubuffer;

    if (len <= 0)
        return (Int64)0;

    /* figure out what we need to read */
    nBlock = start / h->reset_table.block_len;
    nOffset = start % h->reset_table.block_len;
    nLen = len;
    if (nLen > (h->reset_table.block_len - nOffset))
        nLen = h->reset_table.block_len - nOffset;

    /* if block is cached, return data from it. */
    FUNC0(h->lzx_mutex);
    FUNC0(h->cache_mutex);
    if (h->cache_block_indices[nBlock % h->cache_num_blocks] == nBlock    &&
        h->cache_blocks[nBlock % h->cache_num_blocks] != NULL)
    {
        FUNC5(buf,
               h->cache_blocks[nBlock % h->cache_num_blocks] + nOffset,
               (unsigned int)nLen);
        FUNC1(h->cache_mutex);
        FUNC1(h->lzx_mutex);
        return nLen;
    }
    FUNC1(h->cache_mutex);

    /* data request not satisfied, so... start up the decompressor machine */
    if (! h->lzx_state)
    {
        int window_size = FUNC4(h->window_size) - 1;
        h->lzx_last_block = -1;
        h->lzx_state = FUNC2(window_size);
    }

    /* decompress some data */
    gotLen = FUNC3(h, nBlock, &ubuffer);
    /* SumatraPDF: check return value */
    if (gotLen == (UInt64)-1)
    {
        FUNC1(h->lzx_mutex);
        return 0;
    }
    if (gotLen < nLen)
        nLen = gotLen;
    FUNC5(buf, ubuffer+nOffset, (unsigned int)nLen);
    FUNC1(h->lzx_mutex);
    return nLen;
}