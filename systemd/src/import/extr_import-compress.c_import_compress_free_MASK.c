#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bzip2; scalar_t__ encoding; int /*<<< orphan*/  gzip; int /*<<< orphan*/  xz; } ;
typedef  TYPE_1__ ImportCompress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IMPORT_COMPRESS_BZIP2 ; 
 scalar_t__ IMPORT_COMPRESS_GZIP ; 
 scalar_t__ IMPORT_COMPRESS_UNKNOWN ; 
 scalar_t__ IMPORT_COMPRESS_XZ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ImportCompress *c) {
        FUNC2(c);

        if (c->type == IMPORT_COMPRESS_XZ)
                FUNC5(&c->xz);
        else if (c->type == IMPORT_COMPRESS_GZIP) {
                if (c->encoding)
                        FUNC3(&c->gzip);
                else
                        FUNC4(&c->gzip);
#if HAVE_BZIP2
        } else if (c->type == IMPORT_COMPRESS_BZIP2) {
                if (c->encoding)
                        BZ2_bzCompressEnd(&c->bzip2);
                else
                        BZ2_bzDecompressEnd(&c->bzip2);
#endif
        }

        c->type = IMPORT_COMPRESS_UNKNOWN;
}