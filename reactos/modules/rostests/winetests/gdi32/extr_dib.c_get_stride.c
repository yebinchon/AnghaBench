
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biBitCount; int biWidth; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int DWORD ;
typedef TYPE_2__ BITMAPINFO ;



__attribute__((used)) static inline DWORD get_stride(const BITMAPINFO *bmi)
{
    return ((bmi->bmiHeader.biBitCount * bmi->bmiHeader.biWidth + 31) >> 3) & ~3;
}
