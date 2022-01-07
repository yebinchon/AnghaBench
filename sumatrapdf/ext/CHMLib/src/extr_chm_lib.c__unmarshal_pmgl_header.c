
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmPmglHeader {unsigned int free_space; unsigned int unknown_0008; int signature; int block_next; int block_prev; } ;


 unsigned int _CHM_PMGL_LEN ;
 int _chm_pmgl_marker ;
 int _unmarshal_char_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_int32 (unsigned char**,unsigned int*,int *) ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,unsigned int*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int _unmarshal_pmgl_header(unsigned char **pData,
                                  unsigned int *pDataLen,
                                  unsigned int blockLen,
                                  struct chmPmglHeader *dest)
{

    if (*pDataLen != _CHM_PMGL_LEN)
        return 0;

    if (blockLen < _CHM_PMGL_LEN)
        return 0;


    _unmarshal_char_array(pData, pDataLen, dest->signature, 4);
    _unmarshal_uint32 (pData, pDataLen, &dest->free_space);
    _unmarshal_uint32 (pData, pDataLen, &dest->unknown_0008);
    _unmarshal_int32 (pData, pDataLen, &dest->block_prev);
    _unmarshal_int32 (pData, pDataLen, &dest->block_next);


    if (memcmp(dest->signature, _chm_pmgl_marker, 4) != 0)
        return 0;

    if (dest->free_space > blockLen - _CHM_PMGL_LEN)
        return 0;

    return 1;
}
