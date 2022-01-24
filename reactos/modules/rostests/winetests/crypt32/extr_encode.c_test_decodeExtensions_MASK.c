#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ cExtension; TYPE_4__* rgExtension; } ;
struct TYPE_15__ {scalar_t__* encoded; TYPE_5__ exts; } ;
struct TYPE_14__ {scalar_t__ cExtension; TYPE_2__* rgExtension; } ;
struct TYPE_11__ {int /*<<< orphan*/  cbData; int /*<<< orphan*/  pbData; } ;
struct TYPE_12__ {TYPE_3__ Value; int /*<<< orphan*/  pszObjId; } ;
struct TYPE_9__ {int /*<<< orphan*/  pbData; } ;
struct TYPE_10__ {TYPE_1__ Value; int /*<<< orphan*/  pszObjId; } ;
typedef  size_t DWORD ;
typedef  TYPE_6__ CERT_EXTENSIONS ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_EXTENSIONS ; 
 TYPE_7__* exts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int FUNC9 (size_t,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < FUNC0(exts); i++)
    {
        BOOL ret;
        BYTE *buf = NULL;
        DWORD bufSize = 0;

        ret = FUNC9(dwEncoding, X509_EXTENSIONS,
         exts[i].encoded, exts[i].encoded[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
         NULL, buf, &bufSize);
        FUNC8(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
        if (ret)
        {
            CERT_EXTENSIONS *ext = (CERT_EXTENSIONS *)buf;
            DWORD j;

            FUNC8(ext->cExtension == exts[i].exts.cExtension,
             "Expected %d extensions, see %d\n", exts[i].exts.cExtension,
             ext->cExtension);
            for (j = 0; j < FUNC7(ext->cExtension, exts[i].exts.cExtension); j++)
            {
                FUNC8(!FUNC10(ext->rgExtension[j].pszObjId,
                 exts[i].exts.rgExtension[j].pszObjId),
                 "Expected OID %s, got %s\n",
                 exts[i].exts.rgExtension[j].pszObjId,
                 ext->rgExtension[j].pszObjId);
                FUNC8(!FUNC6(ext->rgExtension[j].Value.pbData,
                 exts[i].exts.rgExtension[j].Value.pbData,
                 exts[i].exts.rgExtension[j].Value.cbData),
                 "Unexpected value\n");
            }
            FUNC5(buf);
        }
        ret = FUNC9(dwEncoding, X509_EXTENSIONS,
         exts[i].encoded, exts[i].encoded[1] + 2, 0, NULL, NULL, &bufSize);
        FUNC8(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
        buf = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, bufSize);
        if (buf)
        {
            ret = FUNC9(dwEncoding, X509_EXTENSIONS,
             exts[i].encoded, exts[i].encoded[1] + 2, 0, NULL, buf, &bufSize);
            FUNC8(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
            FUNC4(FUNC2(), 0, buf);
        }
    }
}