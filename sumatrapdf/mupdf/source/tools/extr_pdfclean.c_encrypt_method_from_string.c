
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDF_ENCRYPT_AES_128 ;
 int PDF_ENCRYPT_AES_256 ;
 int PDF_ENCRYPT_RC4_128 ;
 int PDF_ENCRYPT_RC4_40 ;
 int PDF_ENCRYPT_UNKNOWN ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int encrypt_method_from_string(const char *name)
{
 if (!strcmp(name, "rc4-40")) return PDF_ENCRYPT_RC4_40;
 if (!strcmp(name, "rc4-128")) return PDF_ENCRYPT_RC4_128;
 if (!strcmp(name, "aes-128")) return PDF_ENCRYPT_AES_128;
 if (!strcmp(name, "aes-256")) return PDF_ENCRYPT_AES_256;
 return PDF_ENCRYPT_UNKNOWN;
}
