
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct yy_buffer_state {int dummy; } ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_buf_size; char* yy_ch_buf; int yy_is_our_buffer; } ;
typedef int FILE ;


 int YY_FATAL_ERROR (char*) ;
 int ppy__init_buffer (TYPE_1__*,int *) ;
 scalar_t__ ppy_alloc (int) ;

YY_BUFFER_STATE ppy__create_buffer (FILE * file, int size )
{
 YY_BUFFER_STATE b;

 b = (YY_BUFFER_STATE) ppy_alloc(sizeof( struct yy_buffer_state ) );
 if ( ! b )
  YY_FATAL_ERROR( "out of dynamic memory in ppy__create_buffer()" );

 b->yy_buf_size = size;




 b->yy_ch_buf = (char *) ppy_alloc(b->yy_buf_size + 2 );
 if ( ! b->yy_ch_buf )
  YY_FATAL_ERROR( "out of dynamic memory in ppy__create_buffer()" );

 b->yy_is_our_buffer = 1;

 ppy__init_buffer(b,file );

 return b;
}
