
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int pos; } ;
typedef TYPE_1__ scrollbar ;


 int MIN (int ,unsigned int) ;

void scrollbar_set_handle ( scrollbar *sb, unsigned int pos )
{
    if ( sb != ((void*)0) ) {
        sb->pos = MIN ( sb->length, pos );
    }
}
