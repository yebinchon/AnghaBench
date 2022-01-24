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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Fts5Structure ;
typedef  int /*<<< orphan*/  Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_AVERAGES_ROWID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(Fts5Index *p){
  Fts5Structure s;
  FUNC2(p);
  FUNC4(&s, 0, sizeof(Fts5Structure));
  FUNC0(p, FTS5_AVERAGES_ROWID, (const u8*)"", 0);
  FUNC3(p, &s);
  return FUNC1(p);
}