#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_4__ {TYPE_1__* p_cred; int /*<<< orphan*/  obj; int /*<<< orphan*/  p_context; } ;
typedef  TYPE_2__ vlc_tls_st_t ;
struct TYPE_3__ {void const* whitelist; } ;
typedef  int SecTrustResultType ;
typedef  void const* SecTrustRef ;
typedef  void const* SecCertificateRef ;
typedef  scalar_t__ OSStatus ;
typedef  void const* CFStringRef ;
typedef  scalar_t__ CFIndex ;
typedef  void const* CFDictionaryRef ;
typedef  void const* CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void const*) ; 
 scalar_t__ FUNC1 (void const*) ; 
 void* FUNC2 (void const*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void const**,void const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void const*,void const*) ; 
 scalar_t__ FUNC5 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC6 (void const*) ; 
 int /*<<< orphan*/  FUNC7 (void const*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,void const**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,void const**) ; 
 scalar_t__ FUNC12 (void const*,int*) ; 
 void* FUNC13 (void const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (void const*) ; 
 scalar_t__ FUNC15 (void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_DIALOG_QUESTION_WARNING ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 void const* cfKeyCertificate ; 
 void const* cfKeyHost ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  kCFTypeDictionaryKeyCallBacks ; 
 int /*<<< orphan*/  kCFTypeDictionaryValueCallBacks ; 
#define  kSecTrustResultDeny 131 
#define  kSecTrustResultProceed 130 
#define  kSecTrustResultRecoverableTrustFailure 129 
#define  kSecTrustResultUnspecified 128 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ noErr ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 

__attribute__((used)) static int FUNC22 (vlc_tls_t *session, const char *hostname) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;
    int result = -1;
    SecCertificateRef leaf_cert = NULL;

    SecTrustRef trust = NULL;
    OSStatus ret = FUNC11(sys->p_context, &trust);
    if (ret != noErr || trust == NULL) {
        FUNC18(sys->obj, "error getting certifictate chain");
        return -1;
    }

    CFStringRef cfHostname = FUNC8(kCFAllocatorDefault,
                                                       hostname,
                                                       kCFStringEncodingUTF8);


    /* enable default root / anchor certificates */
    ret = FUNC15(trust, NULL);
    if (ret != noErr) {
        FUNC18(sys->obj, "error setting anchor certificates");
        result = -1;
        goto out;
    }

    SecTrustResultType trust_eval_result = 0;

    ret = FUNC12(trust, &trust_eval_result);
    if (ret != noErr) {
        FUNC18(sys->obj, "error calling SecTrustEvaluate");
        result = -1;
        goto out;
    }

    switch (trust_eval_result) {
        case kSecTrustResultUnspecified:
        case kSecTrustResultProceed:
            FUNC17(sys->obj, "cerfificate verification successful, result is %d", trust_eval_result);
            result = 0;
            goto out;

        case kSecTrustResultRecoverableTrustFailure:
        case kSecTrustResultDeny:
        default:
            FUNC19(sys->obj, "cerfificate verification failed, result is %d", trust_eval_result);
    }

    /* get leaf certificate */
    /* SSLCopyPeerCertificates is only available on OSX 10.5 or later */
#if !TARGET_OS_IPHONE
    CFArrayRef cert_chain = NULL;
    ret = FUNC10(sys->p_context, &cert_chain);
    if (ret != noErr || !cert_chain) {
        result = -1;
        goto out;
    }

    if (FUNC1(cert_chain) == 0) {
        FUNC6(cert_chain);
        result = -1;
        goto out;
    }

    leaf_cert = (SecCertificateRef)FUNC2(cert_chain, 0);
    FUNC7(leaf_cert);
    FUNC6(cert_chain);
#else
    /* SecTrustGetCertificateAtIndex is only available on 10.7 or iOS */
    if (SecTrustGetCertificateCount(trust) == 0) {
        result = -1;
        goto out;
    }

    leaf_cert = SecTrustGetCertificateAtIndex(trust, 0);
    CFRetain(leaf_cert);
#endif


    /* check if leaf already accepted */
    CFIndex max = FUNC1(sys->p_cred->whitelist);
    for (CFIndex i = 0; i < max; ++i) {
        CFDictionaryRef dict = FUNC2(sys->p_cred->whitelist, i);
        CFStringRef knownHost = (CFStringRef)FUNC4(dict, cfKeyHost);
        SecCertificateRef knownCert = (SecCertificateRef)FUNC4(dict, cfKeyCertificate);

        if (!knownHost || !knownCert)
            continue;

        if (FUNC5(knownHost, cfHostname) && FUNC5(knownCert, leaf_cert)) {
            FUNC19(sys->obj, "certificate already accepted, continuing");
            result = 0;
            goto out;
        }
    }

    /* We do not show more certificate details yet because there is no proper API to get
       a summary of the certificate. SecCertificateCopySubjectSummary is the only method
       available on iOS and 10.6. More promising API functions such as
       SecCertificateCopyLongDescription also print out the subject only, more or less.
       But only showing the certificate subject is of no real help for the user.
       We could use SecCertificateCopyValues, but then we need to parse all OID values for
       ourself. This is too mad for just printing information the user will never check
       anyway.
     */

    const char *msg = FUNC9("You attempted to reach %s. "
             "However the security certificate presented by the server "
             "is unknown and could not be authenticated by any trusted "
             "Certification Authority. "
             "This problem may be caused by a configuration error "
             "or an attempt to breach your security or your privacy.\n\n"
             "If in doubt, abort now.\n");
    int answer = FUNC20(sys->obj,
                                          VLC_DIALOG_QUESTION_WARNING, FUNC16("Abort"),
                                          FUNC16("Accept certificate temporarily"),
                                          NULL, FUNC16("Insecure site"),
                                          FUNC21 (msg), hostname);
    if (answer == 1) {
        FUNC19(sys->obj, "Proceeding despite of failed certificate validation");

        /* save leaf certificate in whitelist */
        const void *keys[] = {cfKeyHost, cfKeyCertificate};
        const void *values[] = {cfHostname, leaf_cert};
        CFDictionaryRef dict = FUNC3(kCFAllocatorDefault,
                                                   keys, values, 2,
                                                   &kCFTypeDictionaryKeyCallBacks,
                                                   &kCFTypeDictionaryValueCallBacks);
        if (!dict) {
            FUNC18(sys->obj, "error creating dict");
            result = -1;
            goto out;
        }

        FUNC0(sys->p_cred->whitelist, dict);
        FUNC6(dict);

        result = 0;
        goto out;

    } else {
        result = -1;
        goto out;
    }

out:
    FUNC6(trust);

    if (cfHostname)
        FUNC6(cfHostname);
    if (leaf_cert)
        FUNC6(leaf_cert);

    return result;
}