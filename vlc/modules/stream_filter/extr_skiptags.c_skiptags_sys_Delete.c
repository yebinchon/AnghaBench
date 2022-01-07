
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skiptags_sys_t {int p_tags; } ;


 int block_ChainRelease (int ) ;
 int free (struct skiptags_sys_t*) ;

__attribute__((used)) static void skiptags_sys_Delete(struct skiptags_sys_t *sys)
{
    block_ChainRelease(sys->p_tags);
    free(sys);
}
