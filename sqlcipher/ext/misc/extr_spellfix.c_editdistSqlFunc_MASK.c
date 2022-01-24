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
 int FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int res = FUNC0(
                    (const char*)FUNC4(argv[0]),
                    (const char*)FUNC4(argv[1]),
                    0);
  if( res<0 ){
    if( res==(-3) ){
      FUNC2(context);
    }else if( res==(-2) ){
      FUNC1(context, "non-ASCII input to editdist()", -1);
    }else{
      FUNC1(context, "NULL input to editdist()", -1);
    }
  }else{ 
    FUNC3(context, res);
  }
}