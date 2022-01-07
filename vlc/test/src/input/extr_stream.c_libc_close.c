
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f; } ;
struct reader {struct reader* p_data; TYPE_1__ u; } ;


 int fclose (int ) ;
 int free (struct reader*) ;

__attribute__((used)) static void
libc_close( struct reader *p_reader )
{
    fclose( p_reader->u.f );
    free( p_reader->p_data );
    free( p_reader );
}
