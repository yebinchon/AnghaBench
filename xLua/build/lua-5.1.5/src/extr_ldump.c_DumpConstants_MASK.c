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
struct TYPE_3__ {int sizek; int sizep; int /*<<< orphan*/  source; int /*<<< orphan*/ * p; int /*<<< orphan*/ * k; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  LUA_TBOOLEAN 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC10(const Proto* f, DumpState* D)
{
 int i,n=f->sizek;
 FUNC2(n,D);
 for (i=0; i<n; i++)
 {
  const TValue* o=&f->k[i];
  FUNC0(FUNC9(o),D);
  switch (FUNC9(o))
  {
   case LUA_TNIL:
	break;
   case LUA_TBOOLEAN:
	FUNC0(FUNC5(o),D);
	break;
   case LUA_TNUMBER:
	FUNC3(FUNC7(o),D);
	break;
   case LUA_TSTRING:
	FUNC4(FUNC8(o),D);
	break;
   default:
	FUNC6(0);			/* cannot happen */
	break;
  }
 }
 n=f->sizep;
 FUNC2(n,D);
 for (i=0; i<n; i++) FUNC1(f->p[i],f->source,D);
}