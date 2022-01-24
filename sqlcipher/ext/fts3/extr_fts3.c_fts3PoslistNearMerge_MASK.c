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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char**,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (char**,int,int,int /*<<< orphan*/ ,char**,char**) ; 

__attribute__((used)) static int FUNC3(
  char **pp,                      /* Output buffer */
  char *aTmp,                     /* Temporary buffer space */
  int nRight,                     /* Maximum difference in token positions */
  int nLeft,                      /* Maximum difference in token positions */
  char **pp1,                     /* IN/OUT: Left input list */
  char **pp2                      /* IN/OUT: Right input list */
){
  char *p1 = *pp1;
  char *p2 = *pp2;

  char *pTmp1 = aTmp;
  char *pTmp2;
  char *aTmp2;
  int res = 1;

  FUNC2(&pTmp1, nRight, 0, 0, pp1, pp2);
  aTmp2 = pTmp2 = pTmp1;
  *pp1 = p1;
  *pp2 = p2;
  FUNC2(&pTmp2, nLeft, 1, 0, pp2, pp1);
  if( pTmp1!=aTmp && pTmp2!=aTmp2 ){
    FUNC1(pp, &aTmp, &aTmp2);
  }else if( pTmp1!=aTmp ){
    FUNC0(pp, &aTmp);
  }else if( pTmp2!=aTmp2 ){
    FUNC0(pp, &aTmp2);
  }else{
    res = 0;
  }

  return res;
}