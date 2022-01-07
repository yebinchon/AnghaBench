
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* sys; int * ops; } ;
typedef TYPE_1__ vlc_tls_server_t ;
struct TYPE_11__ {int * whitelist; int * server_cert_chain; } ;
typedef TYPE_2__ vlc_tls_creds_sys_t ;
struct TYPE_13__ {void* member_2; int member_1; int member_0; } ;
struct TYPE_12__ {int member_0; TYPE_4__* member_1; } ;
typedef int SecTrustResultType ;
typedef int * SecTrustRef ;
typedef int * SecPolicyRef ;
typedef int * SecKeychainSearchRef ;
typedef int * SecKeychainItemRef ;
typedef TYPE_3__ SecKeychainAttributeList ;
typedef TYPE_4__ SecKeychainAttribute ;
typedef int * SecIdentityRef ;
typedef int * SecCertificateRef ;
typedef scalar_t__ OSStatus ;
typedef int CSSM_TP_APPLE_EVIDENCE_INFO ;
typedef int * CFMutableArrayRef ;
typedef int CFIndex ;
typedef int * CFArrayRef ;


 int CFArrayAppendArray (int *,int *,int ) ;
 int CFArrayAppendValue (int *,int *) ;
 int * CFArrayCreateMutable (int ,int,int *) ;
 int CFArrayGetCount (int *) ;
 int CFRangeMake (int,int) ;
 int CFRelease (int *) ;
 scalar_t__ SecIdentityCreateWithCertificate (int *,int *,int **) ;
 scalar_t__ SecKeychainSearchCopyNext (int *,int **) ;
 scalar_t__ SecKeychainSearchCreateFromAttributes (int *,int ,TYPE_3__*,int **) ;
 int * SecPolicyCreateSSL (int,int *) ;
 scalar_t__ SecTrustCreateWithCertificates (int *,int *,int **) ;
 scalar_t__ SecTrustEvaluate (int *,int *) ;
 scalar_t__ SecTrustGetResult (int *,int *,int **,int **) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (char const*) ;
 int kCFAllocatorDefault ;
 int kCFTypeArrayCallBacks ;
 int kSecCertificateItemClass ;
 int kSecLabelItemAttr ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 scalar_t__ noErr ;
 int st_ServerOps ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int OpenServer (vlc_tls_server_t *crd, const char *cert, const char *key) {





    VLC_UNUSED(key);
    OSStatus ret;

    msg_Dbg(crd, "open st server");







    SecKeychainAttribute attrib = { kSecLabelItemAttr, strlen(cert), (void *)cert };
    SecKeychainAttributeList attrList = { 1, &attrib };

    SecKeychainSearchRef searchReference = ((void*)0);
    ret = SecKeychainSearchCreateFromAttributes(((void*)0), kSecCertificateItemClass,
                                                 &attrList, &searchReference);
    if (ret != noErr || searchReference == ((void*)0)) {
        msg_Err(crd, "Cannot find certificate with alias %s", cert);
        return VLC_EGENERIC;
    }

    SecKeychainItemRef itemRef = ((void*)0);
    ret = SecKeychainSearchCopyNext(searchReference, &itemRef);
    if (ret != noErr) {
        msg_Err(crd, "Cannot get certificate with alias %s, error: %d", cert, ret);
        return VLC_EGENERIC;
    }
    CFRelease(searchReference);


    SecCertificateRef certificate = (SecCertificateRef)itemRef;

    SecIdentityRef cert_identity = ((void*)0);
    ret = SecIdentityCreateWithCertificate(((void*)0), certificate, &cert_identity);
    if (ret != noErr) {
        msg_Err(crd, "Cannot get private key for certificate");
        CFRelease(certificate);
        return VLC_EGENERIC;
    }





    SecPolicyRef policy = SecPolicyCreateSSL(1, ((void*)0));
    SecTrustRef trust_ref = ((void*)0);
    int result = VLC_SUCCESS;


    ret = SecTrustCreateWithCertificates((CFArrayRef)certificate, policy, &trust_ref);
    if (ret != noErr) {
        msg_Err(crd, "Cannot create trust");
        result = VLC_EGENERIC;
        goto out;
    }

    SecTrustResultType status;
    ret = SecTrustEvaluate(trust_ref, &status);
    if (ret != noErr) {
        msg_Err(crd, "Error evaluating trust");
        result = VLC_EGENERIC;
        goto out;
    }

    CFArrayRef cert_chain = ((void*)0);
    CSSM_TP_APPLE_EVIDENCE_INFO *status_chain;
    ret = SecTrustGetResult(trust_ref, &status, &cert_chain, &status_chain);
    if (ret != noErr || !cert_chain) {
        msg_Err(crd, "error while getting certificate chain");
        result = VLC_EGENERIC;
        goto out;
    }

    CFIndex num_cert_chain = CFArrayGetCount(cert_chain);


    CFMutableArrayRef server_cert_chain = CFArrayCreateMutable(kCFAllocatorDefault, num_cert_chain, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(server_cert_chain, cert_identity);

    msg_Dbg(crd, "Found certificate chain with %ld entries for server certificate", num_cert_chain);
    if (num_cert_chain > 1)
        CFArrayAppendArray(server_cert_chain, cert_chain, CFRangeMake(1, num_cert_chain - 1));
    CFRelease(cert_chain);

    vlc_tls_creds_sys_t *sys = malloc(sizeof(*sys));
    if (unlikely(sys == ((void*)0))) {
        CFRelease(server_cert_chain);
        result = VLC_ENOMEM;
        goto out;
    }

    sys->server_cert_chain = server_cert_chain;
    sys->whitelist = ((void*)0);

    crd->ops = &st_ServerOps;
    crd->sys = sys;

out:
    if (policy)
        CFRelease(policy);
    if (trust_ref)
        CFRelease(trust_ref);

    if (certificate)
        CFRelease(certificate);
    if (cert_identity)
        CFRelease(cert_identity);

    return result;
}
