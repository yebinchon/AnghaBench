#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_7__ {int nSpace; char* aData; int nData; } ;
typedef  TYPE_1__ PendingList ;

/* Variables and functions */
 int FTS3_VARINT_MAX ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(
  PendingList **pp,               /* IN/OUT: Pointer to PendingList struct */
  sqlite3_int64 i                 /* Value to append to data */
){
  PendingList *p = *pp;

  /* Allocate or grow the PendingList as required. */
  if( !p ){
    p = FUNC2(sizeof(*p) + 100);
    if( !p ){
      return SQLITE_NOMEM;
    }
    p->nSpace = 100;
    p->aData = (char *)&p[1];
    p->nData = 0;
  }
  else if( p->nData+FTS3_VARINT_MAX+1>p->nSpace ){
    int nNew = p->nSpace * 2;
    p = FUNC3(p, sizeof(*p) + nNew);
    if( !p ){
      FUNC1(*pp);
      *pp = 0;
      return SQLITE_NOMEM;
    }
    p->nSpace = nNew;
    p->aData = (char *)&p[1];
  }

  /* Append the new serialized varint to the end of the list. */
  p->nData += FUNC0(&p->aData[p->nData], i);
  p->aData[p->nData] = '\0';
  *pp = p;
  return SQLITE_OK;
}