
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_3__ {size_t error; int lowerBound; int upperBound; } ;
typedef TYPE_1__ ZSTD_bounds ;


 TYPE_1__ ZSTD_cParam_getBounds (int ) ;
 scalar_t__ ZSTD_isError (size_t) ;

__attribute__((used)) static size_t ZSTD_cParam_clampBounds(ZSTD_cParameter cParam, int* value)
{
    ZSTD_bounds const bounds = ZSTD_cParam_getBounds(cParam);
    if (ZSTD_isError(bounds.error)) return bounds.error;
    if (*value < bounds.lowerBound) *value = bounds.lowerBound;
    if (*value > bounds.upperBound) *value = bounds.upperBound;
    return 0;
}
