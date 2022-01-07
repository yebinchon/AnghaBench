
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int pos_length; } ;
typedef TYPE_1__ scrollbar ;


 int MAX (unsigned int,unsigned int) ;
 int MIN (int ,int ) ;

void scrollbar_set_handle_length ( scrollbar *sb, unsigned int pos_length )
{
    if ( sb != ((void*)0) ) {
        sb->pos_length = MIN ( sb->length, MAX ( 1u, pos_length ) );
    }
}
