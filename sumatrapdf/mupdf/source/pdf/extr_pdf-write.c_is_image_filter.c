
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int CCF ;
 int CCITTFaxDecode ;
 int DCT ;
 int DCTDecode ;
 int JBIG2Decode ;
 int JPXDecode ;
 int * PDF_NAME (int ) ;
 int RL ;
 int RunLengthDecode ;

__attribute__((used)) static int is_image_filter(pdf_obj *s)
{
 return
  s == PDF_NAME(CCITTFaxDecode) || s == PDF_NAME(CCF) ||
  s == PDF_NAME(DCTDecode) || s == PDF_NAME(DCT) ||
  s == PDF_NAME(RunLengthDecode) || s == PDF_NAME(RL) ||
  s == PDF_NAME(JBIG2Decode) ||
  s == PDF_NAME(JPXDecode);
}
