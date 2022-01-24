#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* pBuffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  pDefaultStyle; } ;
typedef  TYPE_2__ ME_TextEditor ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CP_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int*) ; 

__attribute__((used)) static void FUNC3(ME_TextEditor *editor, void *text, BOOL unicode)
{
  LONG codepage = unicode ? CP_UNICODE : CP_ACP;
  int textLen;

  LPWSTR wszText = FUNC2(codepage, text, &textLen);
  FUNC1(editor, 0, wszText, textLen, editor->pBuffer->pDefaultStyle);
  FUNC0(codepage, wszText);
}