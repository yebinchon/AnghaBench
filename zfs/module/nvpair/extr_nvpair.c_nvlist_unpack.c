
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int nvlist_nv_alloc (int) ;
 int nvlist_xunpack (char*,size_t,int **,int ) ;

int
nvlist_unpack(char *buf, size_t buflen, nvlist_t **nvlp, int kmflag)
{
 return (nvlist_xunpack(buf, buflen, nvlp, nvlist_nv_alloc(kmflag)));
}
