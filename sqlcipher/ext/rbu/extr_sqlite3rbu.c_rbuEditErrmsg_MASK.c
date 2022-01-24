#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rc; char* zErrmsg; } ;
typedef  TYPE_1__ sqlite3rbu ;

/* Variables and functions */
 scalar_t__ SQLITE_CONSTRAINT ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(sqlite3rbu *p){
  if( p->rc==SQLITE_CONSTRAINT && p->zErrmsg ){
    unsigned int i;
    size_t nErrmsg = FUNC2(p->zErrmsg);
    for(i=0; i<(nErrmsg-8); i++){
      if( FUNC0(&p->zErrmsg[i], "rbu_imp_", 8)==0 ){
        int nDel = 8;
        while( p->zErrmsg[i+nDel]>='0' && p->zErrmsg[i+nDel]<='9' ) nDel++;
        FUNC1(&p->zErrmsg[i], &p->zErrmsg[i+nDel], nErrmsg + 1 - i - nDel);
        nErrmsg -= nDel;
      }
    }
  }
}