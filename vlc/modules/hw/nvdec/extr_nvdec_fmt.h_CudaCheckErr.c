
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int (* cuGetErrorString ) (scalar_t__,char const**) ;int (* cuGetErrorName ) (scalar_t__,char const**) ;} ;
typedef TYPE_1__ CudaFunctions ;
typedef scalar_t__ CUresult ;


 scalar_t__ CUDA_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,char const*,char const*,char const*) ;
 int stub1 (scalar_t__,char const**) ;
 int stub2 (scalar_t__,char const**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int CudaCheckErr(vlc_object_t *obj, CudaFunctions *cudaFunctions, CUresult result, const char *psz_func)
{
    if (unlikely(result != CUDA_SUCCESS)) {
        const char *psz_err, *psz_err_str;
        cudaFunctions->cuGetErrorName(result, &psz_err);
        cudaFunctions->cuGetErrorString(result, &psz_err_str);
        msg_Err(obj, "%s failed: %s (%s)", psz_func, psz_err_str, psz_err);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
