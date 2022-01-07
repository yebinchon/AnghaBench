
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;


 int EINVAL ;
 int MSVCRT_CHECK_PMT (int ) ;
 int * _errno () ;
 unsigned int _osplatform ;

errno_t _get_osplatform(unsigned int *pValue)
{
    if (!MSVCRT_CHECK_PMT(pValue != ((void*)0))) {
        *_errno() = EINVAL;
        return EINVAL;
    }

    *pValue = _osplatform;
    return 0;
}
