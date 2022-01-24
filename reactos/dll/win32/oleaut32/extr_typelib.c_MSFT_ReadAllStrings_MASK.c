#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {TYPE_3__* pLibInfo; TYPE_2__* pTblDir; } ;
struct TYPE_13__ {int offset; int /*<<< orphan*/  entry; int /*<<< orphan*/ * str; } ;
struct TYPE_12__ {int /*<<< orphan*/  string_list; } ;
struct TYPE_10__ {int length; int /*<<< orphan*/  offset; } ;
struct TYPE_11__ {TYPE_1__ pStringtab; } ;
typedef  TYPE_4__ TLBString ;
typedef  TYPE_5__ TLBContext ;
typedef  int INT16 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  DO_NOT_SEEK ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int MB_ERR_INVALID_CHARS ; 
 int MB_PRECOMPOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(TLBContext *pcx)
{
    char *string;
    INT16 len_str, len_piece;
    int offs = 0, lengthInChars;

    FUNC2(pcx, pcx->pTblDir->pStringtab.offset);
    while (1) {
        TLBString *tlbstr;

        if (offs >= pcx->pTblDir->pStringtab.length)
            return S_OK;

        FUNC1(&len_str, sizeof(INT16), pcx, DO_NOT_SEEK);
        len_piece = len_str + sizeof(INT16);
        if(len_piece % 4)
            len_piece = (len_piece + 4) & ~0x3;
        if(len_piece < 8)
            len_piece = 8;

        string = FUNC5(len_piece + 1);
        FUNC0(string, len_piece - sizeof(INT16), pcx, DO_NOT_SEEK);
        string[len_str] = '\0';

        lengthInChars = FUNC3(CP_ACP, MB_PRECOMPOSED | MB_ERR_INVALID_CHARS,
                                            string, -1, NULL, 0);
        if (!lengthInChars) {
            FUNC6(string);
            return E_UNEXPECTED;
        }

        tlbstr = FUNC5(sizeof(TLBString));

        tlbstr->offset = offs;
        tlbstr->str = FUNC4(NULL, lengthInChars * sizeof(WCHAR));
        FUNC3(CP_ACP, MB_PRECOMPOSED, string, -1, tlbstr->str, lengthInChars);

        FUNC6(string);

        FUNC7(&pcx->pLibInfo->string_list, &tlbstr->entry);

        offs += len_piece;
    }
}