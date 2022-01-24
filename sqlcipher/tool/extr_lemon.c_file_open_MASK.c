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
struct lemon {char* outname; int /*<<< orphan*/  errorcnt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (struct lemon*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

FILE *FUNC4(
  struct lemon *lemp,
  const char *suffix,
  const char *mode
){
  FILE *fp;

  if( lemp->outname ) FUNC3(lemp->outname);
  lemp->outname = FUNC0(lemp, suffix);
  fp = FUNC1(lemp->outname,mode);
  if( fp==0 && *mode=='w' ){
    FUNC2(stderr,"Can't open file \"%s\".\n",lemp->outname);
    lemp->errorcnt++;
    return 0;
  }
  return fp;
}