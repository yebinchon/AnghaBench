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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ gsize ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC11 (sqlite3_stmt *stmt, void *vdata)
{
    X509_STORE *store = vdata;
    X509 *saved = NULL;
    const char *pem_b64;
    char *pem = NULL;
    BIO *b = NULL;
    gboolean ret = TRUE;

    pem_b64 = (const char *)FUNC10 (stmt, 0);

    gsize len;
    pem = (char *)FUNC7 (pem_b64, &len);
    if (!pem) {
        FUNC9 ("Failed to decode base64.\n");
        goto out;
    }

    b = FUNC1 (FUNC2());
    if (!b) {
        FUNC9 ("Failed to alloc BIO\n");
        goto out;
    }

    if (FUNC3 (b, pem, len) != len) {
        FUNC9 ("Failed to write pem to BIO\n");
        goto out;
    }

    saved = FUNC4 (b, NULL, 0, NULL);
    if (!saved) {
        FUNC9 ("Failed to read PEM from BIO\n");
        goto out;
    }

    FUNC5 (store, saved);

out:
    FUNC8 (pem);
    if (b)
        FUNC0 (b);
    if (saved)
        FUNC6 (saved);

    return ret;
}