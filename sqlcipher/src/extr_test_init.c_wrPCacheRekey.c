
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_3__ {int (* xRekey ) (int *,int *,unsigned int,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pcache; } ;


 int stub1 (int *,int *,unsigned int,unsigned int) ;
 TYPE_2__ wrapped ;

__attribute__((used)) static void wrPCacheRekey(
  sqlite3_pcache *p,
  sqlite3_pcache_page *a,
  unsigned b,
  unsigned c
){
  wrapped.pcache.xRekey(p, a, b, c);
}
