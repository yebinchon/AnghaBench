#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nBuffer; int nLen; char* szData; } ;
typedef  TYPE_1__ ME_String ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

ME_String *FUNC2(ME_String *orig, int charidx)
{
  ME_String *s;

  FUNC1(orig->nBuffer); /* Not a const string */
  FUNC1(charidx>=0);
  FUNC1(charidx<=orig->nLen);

  s = FUNC0(orig->szData+charidx, orig->nLen-charidx);
  if (!s) return NULL;

  orig->nLen = charidx;
  orig->szData[charidx] = '\0';
  return s;
}