
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
typedef int objset_t ;



__attribute__((used)) static int
zpl_test_super(struct super_block *s, void *data)
{
 zfsvfs_t *zfsvfs = s->s_fs_info;
 objset_t *os = data;

 if (zfsvfs == ((void*)0))
  return (0);

 return (os == zfsvfs->z_os);
}
