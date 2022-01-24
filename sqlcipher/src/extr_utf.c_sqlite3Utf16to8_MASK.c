#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  m ;
struct TYPE_9__ {char* z; int flags; TYPE_1__* db; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Str ; 
 int MEM_Term ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *FUNC5(sqlite3 *db, const void *z, int nByte, u8 enc){
  Mem m;
  FUNC1(&m, 0, sizeof(m));
  m.db = db;
  FUNC4(&m, z, nByte, enc, SQLITE_STATIC);
  FUNC2(&m, SQLITE_UTF8);
  if( db->mallocFailed ){
    FUNC3(&m);
    m.z = 0;
  }
  FUNC0( (m.flags & MEM_Term)!=0 || db->mallocFailed );
  FUNC0( (m.flags & MEM_Str)!=0 || db->mallocFailed );
  FUNC0( m.z || db->mallocFailed );
  return m.z;
}