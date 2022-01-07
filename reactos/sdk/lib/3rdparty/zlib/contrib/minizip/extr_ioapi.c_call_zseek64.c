
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long (* zseek64_file ) (int ,int ,scalar_t__,int) ;int opaque; } ;
struct TYPE_5__ {long (* zseek32_file ) (int ,int ,scalar_t__,int) ;TYPE_1__ zfile_func64; } ;
typedef TYPE_2__ zlib_filefunc64_32_def ;
typedef int voidpf ;
typedef scalar_t__ uLong ;
typedef scalar_t__ ZPOS64_T ;


 long stub1 (int ,int ,scalar_t__,int) ;
 long stub2 (int ,int ,scalar_t__,int) ;

long call_zseek64 (const zlib_filefunc64_32_def* pfilefunc,voidpf filestream, ZPOS64_T offset, int origin)
{
    if (pfilefunc->zfile_func64.zseek64_file != ((void*)0))
        return (*(pfilefunc->zfile_func64.zseek64_file)) (pfilefunc->zfile_func64.opaque,filestream,offset,origin);
    else
    {
        uLong offsetTruncated = (uLong)offset;
        if (offsetTruncated != offset)
            return -1;
        else
            return (*(pfilefunc->zseek32_file))(pfilefunc->zfile_func64.opaque,filestream,offsetTruncated,origin);
    }
}
