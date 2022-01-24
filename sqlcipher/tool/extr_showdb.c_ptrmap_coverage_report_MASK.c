#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mxPage; int pagesize; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int,int) ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

__attribute__((used)) static void FUNC4(const char *zDbName){
  int pgno;
  unsigned char *aHdr;
  unsigned char *a;
  int usable;
  int perPage;
  int i;

  /* Avoid the pathological case */
  if( g.mxPage<1 ){
    FUNC2("empty database\n");
    return;
  }

  /* Make sure PTRMAPs are used in this database */
  aHdr = FUNC1(0, 100);
  if( aHdr[55]==0 ){
    FUNC2("database does not use PTRMAP pages\n");
    return;
  }
  usable = g.pagesize - aHdr[20];
  perPage = usable/5;
  FUNC3(aHdr);
  FUNC2("%5d: root of sqlite_master\n", 1);
  for(pgno=2; pgno<=g.mxPage; pgno += perPage+1){
    FUNC2("%5d: PTRMAP page covering %d..%d\n", pgno,
           pgno+1, pgno+perPage);
    a = FUNC1((pgno-1)*g.pagesize, usable);
    for(i=0; i+5<=usable && pgno+1+i/5<=g.mxPage; i+=5){
      const char *zType = "???";
      unsigned int iFrom = FUNC0(&a[i+1]);
      switch( a[i] ){
        case 1:  zType = "b-tree root page";        break;
        case 2:  zType = "freelist page";           break;
        case 3:  zType = "first page of overflow";  break;
        case 4:  zType = "later page of overflow";  break;
        case 5:  zType = "b-tree non-root page";    break;
      }
      FUNC2("%5d: %s, parent=%u\n", pgno+1+i/5, zType, iFrom);
    }
    FUNC3(a);
  }
}