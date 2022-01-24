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
struct chmPmglHeader {unsigned int free_space; unsigned int unknown_0008; int /*<<< orphan*/  signature; int /*<<< orphan*/  block_next; int /*<<< orphan*/  block_prev; } ;

/* Variables and functions */
 unsigned int _CHM_PMGL_LEN ; 
 int /*<<< orphan*/  _chm_pmgl_marker ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**,unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(unsigned char **pData,
                                  unsigned int *pDataLen,
                                  unsigned int blockLen,
                                  struct chmPmglHeader *dest)
{
    /* we only know how to deal with a 0x14 byte structures */
    if (*pDataLen != _CHM_PMGL_LEN)
        return 0;
    /* SumatraPDF: sanity check */
    if (blockLen < _CHM_PMGL_LEN)
        return 0;

    /* unmarshal fields */
    FUNC0(pData, pDataLen,  dest->signature, 4);
    FUNC2    (pData, pDataLen, &dest->free_space);
    FUNC2    (pData, pDataLen, &dest->unknown_0008);
    FUNC1     (pData, pDataLen, &dest->block_prev);
    FUNC1     (pData, pDataLen, &dest->block_next);

    /* check structure */
    if (FUNC3(dest->signature, _chm_pmgl_marker, 4) != 0)
        return 0;
    /* SumatraPDF: sanity check */
    if (dest->free_space > blockLen - _CHM_PMGL_LEN)
        return 0;

    return 1;
}