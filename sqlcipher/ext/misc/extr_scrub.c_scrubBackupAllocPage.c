
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ rcErr; int szPage; } ;
typedef TYPE_1__ ScrubState ;


 scalar_t__ SQLITE_NOMEM ;
 int * sqlite3_malloc (int ) ;

__attribute__((used)) static u8 *scrubBackupAllocPage(ScrubState *p){
  u8 *pPage;
  if( p->rcErr ) return 0;
  pPage = sqlite3_malloc( p->szPage );
  if( pPage==0 ) p->rcErr = SQLITE_NOMEM;
  return pPage;
}
