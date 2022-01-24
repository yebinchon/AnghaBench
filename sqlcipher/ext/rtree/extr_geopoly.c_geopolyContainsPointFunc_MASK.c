#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {int nVertex; } ;
typedef  TYPE_1__ GeoPoly ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 double FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p1 = FUNC2(context, argv[0], 0);
  double x0 = FUNC6(argv[1]);
  double y0 = FUNC6(argv[2]);
  int v = 0;
  int cnt = 0;
  int ii;
  if( p1==0 ) return;
  for(ii=0; ii<p1->nVertex-1; ii++){
    v = FUNC3(x0,y0,FUNC0(p1,ii), FUNC1(p1,ii),
                               FUNC0(p1,ii+1),FUNC1(p1,ii+1));
    if( v==2 ) break;
    cnt += v;
  }
  if( v!=2 ){
    v = FUNC3(x0,y0,FUNC0(p1,ii), FUNC1(p1,ii),
                               FUNC0(p1,0),  FUNC1(p1,0));
  }
  if( v==2 ){
    FUNC5(context, 1);
  }else if( ((v+cnt)&1)==0 ){
    FUNC5(context, 0);
  }else{
    FUNC5(context, 2);
  }
  FUNC4(p1);
}