
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int biHeight; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int DWORD ;
typedef TYPE_2__ BITMAPINFO ;


 int abs (int ) ;
 int get_stride (TYPE_2__ const*) ;

__attribute__((used)) static inline DWORD get_dib_size(const BITMAPINFO *bmi)
{
    return get_stride(bmi) * abs(bmi->bmiHeader.biHeight);
}
