#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* sys; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ vlc_tls_server_t ;
struct TYPE_11__ {int /*<<< orphan*/ * whitelist; int /*<<< orphan*/ * server_cert_chain; } ;
typedef  TYPE_2__ vlc_tls_creds_sys_t ;
struct TYPE_13__ {void* member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int member_0; TYPE_4__* member_1; } ;
typedef  int /*<<< orphan*/  SecTrustResultType ;
typedef  int /*<<< orphan*/ * SecTrustRef ;
typedef  int /*<<< orphan*/ * SecPolicyRef ;
typedef  int /*<<< orphan*/ * SecKeychainSearchRef ;
typedef  int /*<<< orphan*/ * SecKeychainItemRef ;
typedef  TYPE_3__ SecKeychainAttributeList ;
typedef  TYPE_4__ SecKeychainAttribute ;
typedef  int /*<<< orphan*/ * SecIdentityRef ;
typedef  int /*<<< orphan*/ * SecCertificateRef ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  CSSM_TP_APPLE_EVIDENCE_INFO ;
typedef  int /*<<< orphan*/ * CFMutableArrayRef ;
typedef  int CFIndex ;
typedef  int /*<<< orphan*/ * CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFTypeArrayCallBacks ; 
 int /*<<< orphan*/  kSecCertificateItemClass ; 
 int /*<<< orphan*/  kSecLabelItemAttr ; 
 TYPE_2__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,...) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  st_ServerOps ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19 (vlc_tls_server_t *crd, const char *cert, const char *key) {

    /*
     * This function expects the label of the certificate in "cert", stored
     * in the MacOS keychain. The appropriate private key is found automatically.
     */
    FUNC13(key);
    OSStatus ret;

    FUNC15(crd, "open st server");

    /*
     * Get the server certificate.
     *
     * This API is deprecated, but the replacement SecItemCopyMatching
     * only works on >= 10.7
     */
    SecKeychainAttribute attrib = { kSecLabelItemAttr, FUNC17(cert), (void *)cert };
    SecKeychainAttributeList attrList = { 1, &attrib };

    SecKeychainSearchRef searchReference = NULL;
    ret = FUNC8(NULL, kSecCertificateItemClass,
                                                 &attrList, &searchReference);
    if (ret != noErr || searchReference == NULL) {
        FUNC16(crd, "Cannot find certificate with alias %s", cert);
        return VLC_EGENERIC;
    }

    SecKeychainItemRef itemRef = NULL;
    ret = FUNC7(searchReference, &itemRef);
    if (ret != noErr) {
        FUNC16(crd, "Cannot get certificate with alias %s, error: %d", cert, ret);
        return VLC_EGENERIC;
    }
    FUNC5(searchReference);

    /* cast allowed according to documentation */
    SecCertificateRef certificate = (SecCertificateRef)itemRef;

    SecIdentityRef cert_identity = NULL;
    ret = FUNC6(NULL, certificate, &cert_identity);
    if (ret != noErr) {
        FUNC16(crd, "Cannot get private key for certificate");
        FUNC5(certificate);
        return VLC_EGENERIC;
    }

    /*
     * We try to validate the server certificate, but do not care about the result.
     * The only aim is to get the certificate chain.
     */
    SecPolicyRef policy = FUNC9(true, NULL);
    SecTrustRef trust_ref = NULL;
    int result = VLC_SUCCESS;

    /* According to docu its fine to pass just one certificate */
    ret = FUNC10((CFArrayRef)certificate, policy, &trust_ref);
    if (ret != noErr) {
        FUNC16(crd, "Cannot create trust");
        result = VLC_EGENERIC;
        goto out;
    }

    SecTrustResultType status;
    ret = FUNC11(trust_ref, &status);
    if (ret != noErr) {
        FUNC16(crd, "Error evaluating trust");
        result = VLC_EGENERIC;
        goto out;
    }

    CFArrayRef cert_chain = NULL;
    CSSM_TP_APPLE_EVIDENCE_INFO *status_chain;
    ret = FUNC12(trust_ref, &status, &cert_chain, &status_chain);
    if (ret != noErr || !cert_chain) {
        FUNC16(crd, "error while getting certificate chain");
        result = VLC_EGENERIC;
        goto out;
    }

    CFIndex num_cert_chain = FUNC3(cert_chain);

    /* Build up the certificate chain array expected by SSLSetCertificate */
    CFMutableArrayRef server_cert_chain = FUNC2(kCFAllocatorDefault, num_cert_chain, &kCFTypeArrayCallBacks);
    FUNC1(server_cert_chain, cert_identity);

    FUNC15(crd, "Found certificate chain with %ld entries for server certificate", num_cert_chain);
    if (num_cert_chain > 1)
        FUNC0(server_cert_chain, cert_chain, FUNC4(1, num_cert_chain - 1));
    FUNC5(cert_chain);

    vlc_tls_creds_sys_t *sys = FUNC14(sizeof(*sys));
    if (FUNC18(sys == NULL)) {
        FUNC5(server_cert_chain);
        result = VLC_ENOMEM;
        goto out;
    }

    sys->server_cert_chain = server_cert_chain;
    sys->whitelist = NULL;

    crd->ops = &st_ServerOps;
    crd->sys = sys;

out:
    if (policy)
        FUNC5(policy);
    if (trust_ref)
        FUNC5(trust_ref);

    if (certificate)
        FUNC5(certificate);
    if (cert_identity)
        FUNC5(cert_identity);

    return result;
}