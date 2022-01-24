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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zVal;
  int nVal, i, j;
  unsigned int *a;
  a = (unsigned*)FUNC1(context, sizeof(unsigned int)*5);

  if( a ){
    for(i=0; i<argc; i++){
      nVal = FUNC2(argv[i]);
      zVal = (const unsigned char*)FUNC3(argv[i]);
      if( zVal ) for(j=0; j<nVal; j++) FUNC0(a, zVal[j]);
      FUNC0(a, '|');
    }
    FUNC0(a, '\n');
  }
}