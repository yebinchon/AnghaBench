
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int opaque; int (* zopen64_file ) (int ,void const*,int) ;} ;
struct TYPE_5__ {TYPE_1__ zfile_func64; int (* zopen32_file ) (int ,char const*,int) ;} ;
typedef TYPE_2__ zlib_filefunc64_32_def ;
typedef int voidpf ;


 int stub1 (int ,void const*,int) ;
 int stub2 (int ,char const*,int) ;

voidpf call_zopen64 (const zlib_filefunc64_32_def* pfilefunc,const void*filename,int mode)
{
    if (pfilefunc->zfile_func64.zopen64_file != ((void*)0))
        return (*(pfilefunc->zfile_func64.zopen64_file)) (pfilefunc->zfile_func64.opaque,filename,mode);
    else
    {
        return (*(pfilefunc->zopen32_file))(pfilefunc->zfile_func64.opaque,(const char*)filename,mode);
    }
}
