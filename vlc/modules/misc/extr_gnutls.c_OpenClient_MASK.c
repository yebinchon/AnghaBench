#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sys; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ vlc_tls_client_t ;
typedef  int /*<<< orphan*/  gnutls_certificate_credentials_t ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT ; 
 int /*<<< orphan*/  GNUTLS_X509_FMT_PEM ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gnutls_ClientOps ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*,...) ; 
 scalar_t__ FUNC10 (TYPE_1__*,char*) ; 
 char* FUNC11 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC12(vlc_tls_client_t *crd)
{
    gnutls_certificate_credentials_t x509;

    FUNC2(FUNC0(crd));

    int val = FUNC3 (&x509);
    if (val != 0)
    {
        FUNC9 (crd, "cannot allocate credentials: %s",
                 FUNC7 (val));
        return VLC_EGENERIC;
    }

    if (FUNC10(crd, "gnutls-system-trust"))
    {
        val = FUNC5(x509);
        if (val < 0)
            FUNC9(crd, "cannot load trusted Certificate Authorities "
                    "from %s: %s", "system", FUNC7(val));
        else
            FUNC8(crd, "loaded %d trusted CAs from %s", val, "system");
    }

    char *dir = FUNC11(crd, "gnutls-dir-trust");
    if (dir != NULL)
    {
        val = FUNC6(x509, dir,
                                                    GNUTLS_X509_FMT_PEM);
        if (val < 0)
            FUNC9(crd, "cannot load trusted Certificate Authorities "
                    "from %s: %s", dir, FUNC7(val));
        else
            FUNC8(crd, "loaded %d trusted CAs from %s", val, dir);
        FUNC1(dir);
    }

    FUNC4 (x509,
                                         GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT);

    crd->ops = &gnutls_ClientOps;
    crd->sys = x509;
    return VLC_SUCCESS;
}