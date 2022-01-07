
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workSpace ;
typedef int U32 ;
typedef int HUF_DTable ;


 int HUF_DECOMPRESS_WORKSPACE_SIZE_U32 ;
 size_t HUF_readDTableX1_wksp (int *,void const*,size_t,int *,int) ;

size_t HUF_readDTableX1(HUF_DTable* DTable, const void* src, size_t srcSize)
{
    U32 workSpace[HUF_DECOMPRESS_WORKSPACE_SIZE_U32];
    return HUF_readDTableX1_wksp(DTable, src, srcSize,
                                 workSpace, sizeof(workSpace));
}
