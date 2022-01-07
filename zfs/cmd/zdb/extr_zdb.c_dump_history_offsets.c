
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_longlong_t ;
struct TYPE_2__ {scalar_t__ sh_records_lost; scalar_t__ sh_eof; scalar_t__ sh_bof; scalar_t__ sh_phys_max_off; scalar_t__ sh_pool_create_len; } ;
typedef TYPE_1__ spa_history_phys_t ;
typedef int objset_t ;


 int printf (char*,int ) ;

__attribute__((used)) static void
dump_history_offsets(objset_t *os, uint64_t object, void *data, size_t size)
{
 spa_history_phys_t *shp = data;

 if (shp == ((void*)0))
  return;

 (void) printf("\t\tpool_create_len = %llu\n",
     (u_longlong_t)shp->sh_pool_create_len);
 (void) printf("\t\tphys_max_off = %llu\n",
     (u_longlong_t)shp->sh_phys_max_off);
 (void) printf("\t\tbof = %llu\n",
     (u_longlong_t)shp->sh_bof);
 (void) printf("\t\teof = %llu\n",
     (u_longlong_t)shp->sh_eof);
 (void) printf("\t\trecords_lost = %llu\n",
     (u_longlong_t)shp->sh_records_lost);
}
