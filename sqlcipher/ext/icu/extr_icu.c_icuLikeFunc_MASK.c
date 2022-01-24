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
typedef  int /*<<< orphan*/  UChar32 ;

/* Variables and functions */
 int SQLITE_MAX_LIKE_PATTERN_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  const unsigned char *zA = FUNC5(argv[0]);
  const unsigned char *zB = FUNC5(argv[1]);
  UChar32 uEsc = 0;

  /* Limit the length of the LIKE or GLOB pattern to avoid problems
  ** of deep recursion and N*N behavior in patternCompare().
  */
  if( FUNC4(argv[0])>SQLITE_MAX_LIKE_PATTERN_LENGTH ){
    FUNC2(context, "LIKE or GLOB pattern too complex", -1);
    return;
  }


  if( argc==3 ){
    /* The escape character string must consist of a single UTF-8 character.
    ** Otherwise, return an error.
    */
    int nE= FUNC4(argv[2]);
    const unsigned char *zE = FUNC5(argv[2]);
    int i = 0;
    if( zE==0 ) return;
    FUNC0(zE, i, nE, uEsc);
    if( i!=nE){
      FUNC2(context, 
          "ESCAPE expression must be a single character", -1);
      return;
    }
  }

  if( zA && zB ){
    FUNC3(context, FUNC1(zA, zB, uEsc));
  }
}