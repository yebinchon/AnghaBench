
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ picture_t ;


 int free (int ) ;

__attribute__((used)) static void DestroyPicture( picture_t *pic )
{
    free( pic->p_sys );
}
