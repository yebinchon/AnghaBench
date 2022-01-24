#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
struct TYPE_10__ {scalar_t__* fsCsb; } ;
struct TYPE_12__ {scalar_t__ ciACP; TYPE_2__ fs; int /*<<< orphan*/  ciCharset; } ;
struct TYPE_9__ {int /*<<< orphan*/  h; } ;
struct TYPE_11__ {scalar_t__ dwFontSigs; int /*<<< orphan*/  iBaseCharset; scalar_t__ CodePage; TYPE_1__ head; int /*<<< orphan*/  spkf; int /*<<< orphan*/  hkl; } ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_3__* PKL ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  KL ;
typedef  int /*<<< orphan*/  HKL ;
typedef  TYPE_4__ CHARSETINFO ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_CHARSET ; 
 scalar_t__ CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FS_LATIN1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  TYPE_KBDLAYOUT ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  gHandleTable ; 
 int /*<<< orphan*/  gSystemCPCharSet ; 
 scalar_t__ gSystemFS ; 

__attribute__((used)) static PKL
FUNC9(PUNICODE_STRING pustrKLID, HKL hKL)
{
    LCID lCid;
    CHARSETINFO cs;
    PKL pKl;

    /* Create keyboard layout object */
    pKl = FUNC4(gHandleTable, NULL, NULL, NULL, TYPE_KBDLAYOUT, sizeof(KL));
    if (!pKl)
    {
        FUNC0("Failed to create object!\n");
        return NULL;
    }

    pKl->hkl = hKL;
    pKl->spkf = FUNC7(pustrKLID);

    /* Dereference keyboard layout */
    FUNC6(pKl);

    /* If we failed, remove KL object */
    if (!pKl->spkf)
    {
        FUNC0("UserLoadKbdFile(%wZ) failed!\n", pustrKLID);
        FUNC5(pKl->head.h, TYPE_KBDLAYOUT);
        return NULL;
    }

    // Up to Language Identifiers..
    if (!FUNC1(FUNC2(pustrKLID, 16, (PULONG)&lCid)))
    {
        FUNC0("RtlUnicodeStringToInteger failed for '%wZ'\n", pustrKLID);
        FUNC5(pKl->head.h, TYPE_KBDLAYOUT);
        return NULL;
    }

    FUNC3("Language Identifiers %wZ LCID 0x%x\n", pustrKLID, lCid);
    if (FUNC8(lCid, &cs))
    {
       pKl->iBaseCharset = cs.ciCharset;
       pKl->dwFontSigs = cs.fs.fsCsb[0];
       pKl->CodePage = (USHORT)cs.ciACP;
       FUNC3("Charset %u Font Sig %lu CodePage %u\n",
             pKl->iBaseCharset, pKl->dwFontSigs, pKl->CodePage);
    }
    else
    {
       pKl->iBaseCharset = ANSI_CHARSET;
       pKl->dwFontSigs = FS_LATIN1;
       pKl->CodePage = CP_ACP;
    }

    // Set initial system character set and font signature.
    if (gSystemFS == 0)
    {
       gSystemCPCharSet = pKl->iBaseCharset;
       gSystemFS = pKl->dwFontSigs;
    }

    return pKl;
}