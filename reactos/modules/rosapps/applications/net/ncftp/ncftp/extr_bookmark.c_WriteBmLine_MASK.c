#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tok ;
struct TYPE_3__ {char* bookmarkName; char* pass; int xferType; int hasSIZE; int hasMDTM; int hasPASV; int isUnix; char* lastIP; int xferMode; int hasUTIME; int /*<<< orphan*/  ldir; int /*<<< orphan*/  comment; scalar_t__ lastCall; scalar_t__ port; int /*<<< orphan*/  dir; int /*<<< orphan*/  acct; int /*<<< orphan*/  user; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Bookmark ;

/* Variables and functions */
 char* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  kPasswordMagic ; 
 int kPasswordMagicLen ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(Bookmark *bmp, FILE *outfp, int savePassword)
{
	char tok[256];
	char pass[160];

	if (FUNC3(outfp, "%s", bmp->bookmarkName) < 0) return (-1) ;/*1*/
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->name)) < 0) return (-1) ;/*2*/
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->user)) < 0) return (-1) ;/*3*/
	if ((bmp->pass[0] != '\0') && (savePassword == 1)) {
		(void) FUNC4(pass, kPasswordMagic, kPasswordMagicLen);
		FUNC1(pass + kPasswordMagicLen, bmp->pass, FUNC5(bmp->pass), 1);
		if (FUNC3(outfp, ",%s", pass) < 0) return (-1) ;/*4*/
	} else {
		if (FUNC3(outfp, ",%s", "") < 0) return (-1) ;/*4*/
	}
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->acct)) < 0) return (-1) ;/*5*/
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->dir)) < 0) return (-1) ;/*6*/
	if (FUNC3(outfp, ",%c", bmp->xferType) < 0) return (-1) ;/*7*/
	if (FUNC3(outfp, ",%u", (unsigned int) bmp->port) < 0) return (-1) ;/*8*/
	if (FUNC3(outfp, ",%lu", (unsigned long) bmp->lastCall) < 0) return (-1) ;/*9*/
	if (FUNC3(outfp, ",%d", bmp->hasSIZE) < 0) return (-1) ;/*10*/
	if (FUNC3(outfp, ",%d", bmp->hasMDTM) < 0) return (-1) ;/*11*/
	if (FUNC3(outfp, ",%d", bmp->hasPASV) < 0) return (-1) ;/*12*/
	if (FUNC3(outfp, ",%d", bmp->isUnix) < 0) return (-1) ;/*13*/
	if (FUNC3(outfp, ",%s", bmp->lastIP) < 0) return (-1) ;/*14*/
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->comment)) < 0) return (-1) ;/*15*/
	if (FUNC3(outfp, ",%s", "") < 0) return (-1) ;/*16*/
	if (FUNC3(outfp, ",%s", "") < 0) return (-1) ;/*17*/
	if (FUNC3(outfp, ",%s", "") < 0) return (-1) ;/*18*/
	if (FUNC3(outfp, ",%s", "") < 0) return (-1) ;/*19*/
	if (FUNC3(outfp, ",%c", bmp->xferMode) < 0) return (-1) ;/*20*/
	if (FUNC3(outfp, ",%d", bmp->hasUTIME) < 0) return (-1) ;/*21*/
	if (FUNC3(outfp, ",%s", FUNC0(tok, sizeof(tok), bmp->ldir)) < 0) return (-1) ;/*22*/
	if (FUNC3(outfp, "\n") < 0) return (-1) ;
	if (FUNC2(outfp) < 0) return (-1);
	return (0);
}