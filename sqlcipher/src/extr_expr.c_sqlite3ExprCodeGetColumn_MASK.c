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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_3__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(
  Parse *pParse,   /* Parsing and code generating context */
  Table *pTab,     /* Description of the table we are reading from */
  int iColumn,     /* Index of the table column */
  int iTable,      /* The cursor pointing to the table */
  int iReg,        /* Store results here */
  u8 p5            /* P5 value for OP_Column + FLAGS */
){
  Vdbe *v = pParse->pVdbe;
  FUNC0( v!=0 );
  FUNC1(v, pTab, iTable, iColumn, iReg);
  if( p5 ){
    FUNC2(v, p5);
  }
  return iReg;
}