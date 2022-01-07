
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int NTSTATUS ;


 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;

__attribute__((used)) static NTSTATUS
RtlpCompressBufferLZNT1(UCHAR *src, ULONG src_size, UCHAR *dst, ULONG dst_size,
                        ULONG chunk_size, ULONG *final_size, UCHAR *workspace)
{
        UCHAR *src_cur = src, *src_end = src + src_size;
        UCHAR *dst_cur = dst, *dst_end = dst + dst_size;
        ULONG block_size;

        while (src_cur < src_end)
        {

            block_size = min(0x1000, src_end - src_cur);
            if (dst_cur + sizeof(WORD) + block_size > dst_end)
                return STATUS_BUFFER_TOO_SMALL;


            *(WORD *)dst_cur = 0x3000 | (block_size - 1);
            dst_cur += sizeof(WORD);


            memcpy(dst_cur, src_cur, block_size);
            dst_cur += block_size;
            src_cur += block_size;
        }

        if (final_size)
            *final_size = dst_cur - dst;

        return STATUS_SUCCESS;
}
