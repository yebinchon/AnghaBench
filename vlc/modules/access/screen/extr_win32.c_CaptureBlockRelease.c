
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_sys_t {int hbmp; } ;
typedef int block_t ;


 int DeleteObject (int ) ;
 int free (int *) ;

__attribute__((used)) static void CaptureBlockRelease( block_t *p_block )
{
    DeleteObject( ((struct block_sys_t *)p_block)->hbmp );
    free( p_block );
}
