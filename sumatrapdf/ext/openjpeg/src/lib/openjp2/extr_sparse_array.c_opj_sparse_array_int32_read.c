
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_sparse_array_int32_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_INT32 ;
typedef int OPJ_BOOL ;


 int OPJ_TRUE ;
 int opj_sparse_array_int32_read_or_write (int *,int ,int ,int ,int ,int *,int ,int ,int ,int ) ;

OPJ_BOOL opj_sparse_array_int32_read(const opj_sparse_array_int32_t* sa,
                                     OPJ_UINT32 x0,
                                     OPJ_UINT32 y0,
                                     OPJ_UINT32 x1,
                                     OPJ_UINT32 y1,
                                     OPJ_INT32* dest,
                                     OPJ_UINT32 dest_col_stride,
                                     OPJ_UINT32 dest_line_stride,
                                     OPJ_BOOL forgiving)
{
    return opj_sparse_array_int32_read_or_write(
               (opj_sparse_array_int32_t*)sa, x0, y0, x1, y1,
               dest,
               dest_col_stride,
               dest_line_stride,
               forgiving,
               OPJ_TRUE);
}
