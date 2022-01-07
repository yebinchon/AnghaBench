
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_va_t ;
typedef int uint8_t ;
typedef int picture_t ;
struct TYPE_5__ {int (* get ) (TYPE_2__*,int *,int **) ;} ;


 int stub1 (TYPE_2__*,int *,int **) ;

__attribute__((used)) static inline int vlc_va_Get(vlc_va_t *va, picture_t *pic, uint8_t **surface)
{
    return va->ops->get(va, pic, surface);
}
