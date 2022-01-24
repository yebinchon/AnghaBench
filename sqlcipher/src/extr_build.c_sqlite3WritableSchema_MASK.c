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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ sqlite3 ;

/* Variables and functions */
 int SQLITE_Defensive ; 
 int SQLITE_WriteSchema ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(sqlite3 *db){
  FUNC0( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==0 );
  FUNC0( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               SQLITE_WriteSchema );
  FUNC0( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               SQLITE_Defensive );
  FUNC0( (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==
               (SQLITE_WriteSchema|SQLITE_Defensive) );
  return (db->flags&(SQLITE_WriteSchema|SQLITE_Defensive))==SQLITE_WriteSchema;
}