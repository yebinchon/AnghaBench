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
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(ME_TextEditor *editor)
{
  ME_Cursor cursor;
  FUNC1(editor, &cursor, FALSE);
  return FUNC0(&cursor);
}