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
struct TYPE_3__ {int /*<<< orphan*/ * k; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 char* LUA_NUMBER_FMT ; 
#define  LUA_TBOOLEAN 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(const Proto* f, int i)
{
 const TValue* o=&f->k[i];
 switch (FUNC5(o))
 {
  case LUA_TNIL:
	FUNC3("nil");
	break;
  case LUA_TBOOLEAN:
	FUNC3(FUNC1(o) ? "true" : "false");
	break;
  case LUA_TNUMBER:
	FUNC3(LUA_NUMBER_FMT,FUNC2(o));
	break;
  case LUA_TSTRING:
	FUNC0(FUNC4(o));
	break;
  default:				/* cannot happen */
	FUNC3("? type=%d",FUNC5(o));
	break;
 }
}