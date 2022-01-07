
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef int objset_t ;


 int FTAG ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int getzfsvfs_impl (int *,int **) ;

int
getzfsvfs(const char *dsname, zfsvfs_t **zfvp)
{
 objset_t *os;
 int error;

 error = dmu_objset_hold(dsname, FTAG, &os);
 if (error != 0)
  return (error);

 error = getzfsvfs_impl(os, zfvp);
 dmu_objset_rele(os, FTAG);
 return (error);
}
