
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pdf_annot_type { ____Placeholder_pdf_annot_type } pdf_annot_type ;






__attribute__((used)) static int should_edit_icolor(enum pdf_annot_type subtype)
{
 switch (subtype) {
 default:
  return 0;
 case 129:
 case 128:
 case 130:
  return 1;
 }
}
