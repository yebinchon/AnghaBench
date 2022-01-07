
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ chunk_t ;


 int FREENULL (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void chunk_free( chunk_t * chunk )
{
    FREENULL( chunk->data );
    free( chunk );
}
