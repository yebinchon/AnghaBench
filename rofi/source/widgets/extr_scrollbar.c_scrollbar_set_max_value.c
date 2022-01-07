
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ scrollbar ;


 int MAX (unsigned int,unsigned int) ;

void scrollbar_set_max_value ( scrollbar *sb, unsigned int max )
{
    if ( sb != ((void*)0) ) {
        sb->length = MAX ( 1u, max );
    }
}
