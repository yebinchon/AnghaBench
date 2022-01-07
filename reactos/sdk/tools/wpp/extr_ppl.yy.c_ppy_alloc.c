
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yy_size_t ;


 scalar_t__ malloc (int ) ;

void *ppy_alloc (yy_size_t size )
{
 return (void *) malloc( size );
}
