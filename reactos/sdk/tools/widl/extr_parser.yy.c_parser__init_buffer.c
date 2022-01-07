
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_5__ {int yy_fill_buffer; int yy_bs_lineno; scalar_t__ yy_is_interactive; scalar_t__ yy_bs_column; int * yy_input_file; } ;
typedef int FILE ;


 TYPE_1__* YY_CURRENT_BUFFER ;
 int errno ;
 int parser__flush_buffer (TYPE_1__*) ;

__attribute__((used)) static void parser__init_buffer (YY_BUFFER_STATE b, FILE * file )

{
 int oerrno = errno;

 parser__flush_buffer(b );

 b->yy_input_file = file;
 b->yy_fill_buffer = 1;





    if (b != YY_CURRENT_BUFFER){
        b->yy_bs_lineno = 1;
        b->yy_bs_column = 0;
    }

        b->yy_is_interactive = 0;

 errno = oerrno;
}
