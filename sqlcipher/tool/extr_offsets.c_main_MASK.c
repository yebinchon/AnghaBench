#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  g ;
struct TYPE_6__ {int bTrace; char* zErr; scalar_t__ f; int /*<<< orphan*/  iRoot; int /*<<< orphan*/  iCol; int /*<<< orphan*/  szPg; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(int argc, char **argv){
  GState g;
  FUNC3(&g, 0, sizeof(g));
  if( argc>2 && FUNC7(argv[1],"--trace")==0 ){
    g.bTrace = 1;
    argc--;
    argv++;
  }
  if( argc!=4 ){
    FUNC2(stderr, "Usage: %s DATABASE TABLE COLUMN\n", *argv);
    FUNC0(1);
  }
  FUNC4(&g, argv[1], argv[2], argv[3]);
  if( g.zErr ){
    FUNC2(stderr, "%s\n", g.zErr);
    FUNC0(1);
  }
  FUNC5(&g, "# szPg = %d\n", g.szPg);
  FUNC5(&g, "# iRoot = %d\n", g.iRoot);
  FUNC5(&g, "# iCol = %d\n", g.iCol);
  g.f = FUNC1(argv[1], "rb");
  if( g.f==0 ){
    FUNC2(stderr, "cannot open \"%s\"\n", argv[1]);
    FUNC0(1);
  }
  FUNC6(&g, g.iRoot);
  if( g.zErr ){
    FUNC2(stderr, "%s\n", g.zErr);
    FUNC0(1);
  }
  return 0; 
}