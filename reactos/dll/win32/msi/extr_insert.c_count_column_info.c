
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ column_info ;
typedef scalar_t__ UINT ;



__attribute__((used)) static UINT count_column_info( const column_info *ci )
{
    UINT n = 0;
    for ( ; ci; ci = ci->next )
        n++;
    return n;
}
