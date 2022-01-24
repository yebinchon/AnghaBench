#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_5__ {int /*<<< orphan*/  isInit; } ;
typedef  TYPE_1__ MD5Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(sqlite3_context *context, int argc, sqlite3_value **argv){
  MD5Context *p;
  int i;
  if( argc<1 ) return;
  p = FUNC2(context, sizeof(*p));
  if( p==0 ) return;
  if( !p->isInit ){
    FUNC0(p);
  }
  for(i=0; i<argc; i++){
    const char *zData = (char*)FUNC3(argv[i]);
    if( zData ){
      FUNC1(p, (unsigned char*)zData, FUNC4(zData));
    }
  }
}