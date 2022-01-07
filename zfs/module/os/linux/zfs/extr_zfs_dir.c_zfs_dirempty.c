
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_id; int * z_dirlocks; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {int z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int zap_count (int ,int ,scalar_t__*) ;

boolean_t
zfs_dirempty(znode_t *dzp)
{
 zfsvfs_t *zfsvfs = ZTOZSB(dzp);
 uint64_t count;
 int error;

 if (dzp->z_dirlocks != ((void*)0))
  return (B_FALSE);

 error = zap_count(zfsvfs->z_os, dzp->z_id, &count);
 if (error != 0 || count != 0)
  return (B_FALSE);

 return (B_TRUE);
}
