
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_4__ {TYPE_1__* p_cred; int obj; int p_context; } ;
typedef TYPE_2__ vlc_tls_st_t ;
struct TYPE_3__ {void const* whitelist; } ;
typedef int SecTrustResultType ;
typedef void const* SecTrustRef ;
typedef void const* SecCertificateRef ;
typedef scalar_t__ OSStatus ;
typedef void const* CFStringRef ;
typedef scalar_t__ CFIndex ;
typedef void const* CFDictionaryRef ;
typedef void const* CFArrayRef ;


 int CFArrayAppendValue (void const*,void const*) ;
 scalar_t__ CFArrayGetCount (void const*) ;
 void* CFArrayGetValueAtIndex (void const*,scalar_t__) ;
 void* CFDictionaryCreate (int ,void const**,void const**,int,int *,int *) ;
 scalar_t__ CFDictionaryGetValue (void const*,void const*) ;
 scalar_t__ CFEqual (void const*,void const*) ;
 int CFRelease (void const*) ;
 int CFRetain (void const*) ;
 void* CFStringCreateWithCString (int ,char const*,int ) ;
 char* N_ (char*) ;
 scalar_t__ SSLCopyPeerCertificates (int ,void const**) ;
 scalar_t__ SSLCopyPeerTrust (int ,void const**) ;
 scalar_t__ SecTrustEvaluate (void const*,int*) ;
 void* SecTrustGetCertificateAtIndex (void const*,int ) ;
 scalar_t__ SecTrustGetCertificateCount (void const*) ;
 scalar_t__ SecTrustSetAnchorCertificates (void const*,int *) ;
 int VLC_DIALOG_QUESTION_WARNING ;
 int _ (char*) ;
 void const* cfKeyCertificate ;
 void const* cfKeyHost ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingUTF8 ;
 int kCFTypeDictionaryKeyCallBacks ;
 int kCFTypeDictionaryValueCallBacks ;




 int msg_Dbg (int ,char*,int) ;
 int msg_Err (int ,char*) ;
 int msg_Warn (int ,char*,...) ;
 scalar_t__ noErr ;
 int vlc_dialog_wait_question (int ,int ,int ,int ,int *,int ,int ,char const*) ;
 int vlc_gettext (char const*) ;

__attribute__((used)) static int st_validateServerCertificate (vlc_tls_t *session, const char *hostname) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;
    int result = -1;
    SecCertificateRef leaf_cert = ((void*)0);

    SecTrustRef trust = ((void*)0);
    OSStatus ret = SSLCopyPeerTrust(sys->p_context, &trust);
    if (ret != noErr || trust == ((void*)0)) {
        msg_Err(sys->obj, "error getting certifictate chain");
        return -1;
    }

    CFStringRef cfHostname = CFStringCreateWithCString(kCFAllocatorDefault,
                                                       hostname,
                                                       kCFStringEncodingUTF8);



    ret = SecTrustSetAnchorCertificates(trust, ((void*)0));
    if (ret != noErr) {
        msg_Err(sys->obj, "error setting anchor certificates");
        result = -1;
        goto out;
    }

    SecTrustResultType trust_eval_result = 0;

    ret = SecTrustEvaluate(trust, &trust_eval_result);
    if (ret != noErr) {
        msg_Err(sys->obj, "error calling SecTrustEvaluate");
        result = -1;
        goto out;
    }

    switch (trust_eval_result) {
        case 128:
        case 130:
            msg_Dbg(sys->obj, "cerfificate verification successful, result is %d", trust_eval_result);
            result = 0;
            goto out;

        case 129:
        case 131:
        default:
            msg_Warn(sys->obj, "cerfificate verification failed, result is %d", trust_eval_result);
    }




    CFArrayRef cert_chain = ((void*)0);
    ret = SSLCopyPeerCertificates(sys->p_context, &cert_chain);
    if (ret != noErr || !cert_chain) {
        result = -1;
        goto out;
    }

    if (CFArrayGetCount(cert_chain) == 0) {
        CFRelease(cert_chain);
        result = -1;
        goto out;
    }

    leaf_cert = (SecCertificateRef)CFArrayGetValueAtIndex(cert_chain, 0);
    CFRetain(leaf_cert);
    CFRelease(cert_chain);
    CFIndex max = CFArrayGetCount(sys->p_cred->whitelist);
    for (CFIndex i = 0; i < max; ++i) {
        CFDictionaryRef dict = CFArrayGetValueAtIndex(sys->p_cred->whitelist, i);
        CFStringRef knownHost = (CFStringRef)CFDictionaryGetValue(dict, cfKeyHost);
        SecCertificateRef knownCert = (SecCertificateRef)CFDictionaryGetValue(dict, cfKeyCertificate);

        if (!knownHost || !knownCert)
            continue;

        if (CFEqual(knownHost, cfHostname) && CFEqual(knownCert, leaf_cert)) {
            msg_Warn(sys->obj, "certificate already accepted, continuing");
            result = 0;
            goto out;
        }
    }
    const char *msg = N_("You attempted to reach %s. "
             "However the security certificate presented by the server "
             "is unknown and could not be authenticated by any trusted "
             "Certification Authority. "
             "This problem may be caused by a configuration error "
             "or an attempt to breach your security or your privacy.\n\n"
             "If in doubt, abort now.\n");
    int answer = vlc_dialog_wait_question(sys->obj,
                                          VLC_DIALOG_QUESTION_WARNING, _("Abort"),
                                          _("Accept certificate temporarily"),
                                          ((void*)0), _("Insecure site"),
                                          vlc_gettext (msg), hostname);
    if (answer == 1) {
        msg_Warn(sys->obj, "Proceeding despite of failed certificate validation");


        const void *keys[] = {cfKeyHost, cfKeyCertificate};
        const void *values[] = {cfHostname, leaf_cert};
        CFDictionaryRef dict = CFDictionaryCreate(kCFAllocatorDefault,
                                                   keys, values, 2,
                                                   &kCFTypeDictionaryKeyCallBacks,
                                                   &kCFTypeDictionaryValueCallBacks);
        if (!dict) {
            msg_Err(sys->obj, "error creating dict");
            result = -1;
            goto out;
        }

        CFArrayAppendValue(sys->p_cred->whitelist, dict);
        CFRelease(dict);

        result = 0;
        goto out;

    } else {
        result = -1;
        goto out;
    }

out:
    CFRelease(trust);

    if (cfHostname)
        CFRelease(cfHostname);
    if (leaf_cert)
        CFRelease(leaf_cert);

    return result;
}
