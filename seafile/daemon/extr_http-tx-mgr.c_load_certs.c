
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef scalar_t__ gsize ;
typedef int gboolean ;
typedef int X509_STORE ;
typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 scalar_t__ BIO_write (int *,char*,scalar_t__) ;
 int * PEM_read_bio_X509 (int *,int *,int ,int *) ;
 int TRUE ;
 int X509_STORE_add_cert (int *,int *) ;
 int X509_free (int *) ;
 scalar_t__ g_base64_decode (char const*,scalar_t__*) ;
 int g_free (char*) ;
 int seaf_warning (char*) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
load_certs (sqlite3_stmt *stmt, void *vdata)
{
    X509_STORE *store = vdata;
    X509 *saved = ((void*)0);
    const char *pem_b64;
    char *pem = ((void*)0);
    BIO *b = ((void*)0);
    gboolean ret = TRUE;

    pem_b64 = (const char *)sqlite3_column_text (stmt, 0);

    gsize len;
    pem = (char *)g_base64_decode (pem_b64, &len);
    if (!pem) {
        seaf_warning ("Failed to decode base64.\n");
        goto out;
    }

    b = BIO_new (BIO_s_mem());
    if (!b) {
        seaf_warning ("Failed to alloc BIO\n");
        goto out;
    }

    if (BIO_write (b, pem, len) != len) {
        seaf_warning ("Failed to write pem to BIO\n");
        goto out;
    }

    saved = PEM_read_bio_X509 (b, ((void*)0), 0, ((void*)0));
    if (!saved) {
        seaf_warning ("Failed to read PEM from BIO\n");
        goto out;
    }

    X509_STORE_add_cert (store, saved);

out:
    g_free (pem);
    if (b)
        BIO_free (b);
    if (saved)
        X509_free (saved);

    return ret;
}
