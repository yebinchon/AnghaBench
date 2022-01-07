
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmItspHeader {unsigned int version; unsigned int header_len; unsigned int unknown_000c; scalar_t__ block_len; unsigned int blockidx_intvl; unsigned int index_depth; unsigned int index_root; unsigned int index_head; unsigned int unknown_0024; scalar_t__ num_blocks; unsigned int unknown_002c; scalar_t__ lang_id; int signature; int unknown_0044; int system_uuid; } ;


 unsigned int _CHM_ITSP_V1_LEN ;
 int _unmarshal_char_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_int32 (unsigned char**,unsigned int*,unsigned int*) ;
 int _unmarshal_uchar_array (unsigned char**,unsigned int*,int ,int) ;
 int _unmarshal_uint32 (unsigned char**,unsigned int*,scalar_t__*) ;
 int _unmarshal_uuid (unsigned char**,unsigned int*,int ) ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static int _unmarshal_itsp_header(unsigned char **pData,
                                  unsigned int *pDataLen,
                                  struct chmItspHeader *dest)
{

    if (*pDataLen != _CHM_ITSP_V1_LEN)
        return 0;


    _unmarshal_char_array(pData, pDataLen, dest->signature, 4);
    _unmarshal_int32 (pData, pDataLen, &dest->version);
    _unmarshal_int32 (pData, pDataLen, &dest->header_len);
    _unmarshal_int32 (pData, pDataLen, &dest->unknown_000c);
    _unmarshal_uint32 (pData, pDataLen, &dest->block_len);
    _unmarshal_int32 (pData, pDataLen, &dest->blockidx_intvl);
    _unmarshal_int32 (pData, pDataLen, &dest->index_depth);
    _unmarshal_int32 (pData, pDataLen, &dest->index_root);
    _unmarshal_int32 (pData, pDataLen, &dest->index_head);
    _unmarshal_int32 (pData, pDataLen, &dest->unknown_0024);
    _unmarshal_uint32 (pData, pDataLen, &dest->num_blocks);
    _unmarshal_int32 (pData, pDataLen, &dest->unknown_002c);
    _unmarshal_uint32 (pData, pDataLen, &dest->lang_id);
    _unmarshal_uuid (pData, pDataLen, dest->system_uuid);
    _unmarshal_uchar_array(pData, pDataLen, dest->unknown_0044, 16);


    if (memcmp(dest->signature, "ITSP", 4) != 0)
        return 0;
    if (dest->version != 1)
        return 0;
    if (dest->header_len != _CHM_ITSP_V1_LEN)
        return 0;

    if (dest->block_len == 0)
        return 0;

    return 1;
}
