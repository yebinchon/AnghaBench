#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  out ;
typedef  scalar_t__ i64 ;
struct TYPE_14__ {scalar_t__ n; } ;
struct TYPE_13__ {scalar_t__ rc; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(
  Fts5Index *p,                   /* FTS5 backend object */
  Fts5Buffer *p1,                 /* First list to merge */
  Fts5Buffer *p2                  /* Second list to merge */
){
  int i1 = 0;
  int i2 = 0;
  i64 iRowid1 = 0;
  i64 iRowid2 = 0;
  i64 iOut = 0;

  Fts5Buffer out;
  FUNC5(&out, 0, sizeof(out));
  FUNC6(&p->rc, &out, p1->n + p2->n);
  if( p->rc ) return;

  FUNC4(p1, &i1, &iRowid1);
  FUNC4(p2, &i2, &iRowid2);
  while( i1>=0 || i2>=0 ){
    if( i1>=0 && (i2<0 || iRowid1<iRowid2) ){
      FUNC0( iOut==0 || iRowid1>iOut );
      FUNC2(&out, iRowid1 - iOut);
      iOut = iRowid1;
      FUNC4(p1, &i1, &iRowid1);
    }else{
      FUNC0( iOut==0 || iRowid2>iOut );
      FUNC2(&out, iRowid2 - iOut);
      iOut = iRowid2;
      if( i1>=0 && iRowid1==iRowid2 ){
        FUNC4(p1, &i1, &iRowid1);
      }
      FUNC4(p2, &i2, &iRowid2);
    }
  }

  FUNC3(&out, p1);
  FUNC1(&out);
}