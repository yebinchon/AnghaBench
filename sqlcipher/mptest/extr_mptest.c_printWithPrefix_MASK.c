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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,char const*) ; 

__attribute__((used)) static void FUNC1(FILE *pOut, const char *zPrefix, const char *zMsg){
  while( zMsg && zMsg[0] ){
    int i;
    for(i=0; zMsg[i] && zMsg[i]!='\n' && zMsg[i]!='\r'; i++){}
    FUNC0(pOut, "%s%.*s\n", zPrefix, i, zMsg);
    zMsg += i;
    while( zMsg[0]=='\n' || zMsg[0]=='\r' ) zMsg++;
  }
}