#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  DocListReader ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  DocList *pLeft,    /* Doclist resulting from the words on the left */
  DocList *pRight,   /* Doclist for the next word to the right */
  DocList *pOut      /* Write the combined doclist here */
){
  DocListReader left, right;
  sqlite_int64 docidLeft, docidRight, priorLeft;

  FUNC2(&left, pLeft);
  FUNC2(&right, pRight);
  docidLeft = FUNC1(&left);
  docidRight = FUNC1(&right);

  while( docidLeft>0 && docidRight>0 ){
    if( docidLeft<=docidRight ){
      FUNC0(pOut, docidLeft);
    }else{
      FUNC0(pOut, docidRight);
    }
    priorLeft = docidLeft;
    if( docidLeft<=docidRight ){
      docidLeft = FUNC1(&left);
    }
    if( docidRight>0 && docidRight<=priorLeft ){
      docidRight = FUNC1(&right);
    }
  }
  while( docidLeft>0 ){
    FUNC0(pOut, docidLeft);
    docidLeft = FUNC1(&left);
  }
  while( docidRight>0 ){
    FUNC0(pOut, docidRight);
    docidRight = FUNC1(&right);
  }
}