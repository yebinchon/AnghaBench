
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pdf_signature_error { ____Placeholder_pdf_signature_error } pdf_signature_error ;
char *pdf_signature_error_description(enum pdf_signature_error err)
{
 switch (err)
 {
 case 131:
  return "";
 case 132:
  return "No signatures.";
 case 133:
  return "No certificate.";
 case 135:
  return "Signature invalidated by change to document.";
 case 130:
  return "Self-signed certificate.";
 case 129:
  return "Self-signed certificate in chain.";
 case 134:
  return "Certificate not trusted.";
 default:
 case 128:
  return "Unknown error.";
 }
}
