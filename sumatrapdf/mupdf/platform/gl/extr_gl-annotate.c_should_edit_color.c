
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pdf_annot_type { ____Placeholder_pdf_annot_type } pdf_annot_type ;
__attribute__((used)) static int should_edit_color(enum pdf_annot_type subtype)
{
 switch (subtype) {
 default:
  return 0;
 case 131:
 case 129:
 case 141:
 case 134:
 case 143:
  return 1;
 case 140:
  return 1;
 case 138:
 case 137:
 case 133:
 case 142:
 case 136:
 case 135:
  return 1;
 case 139:
 case 128:
 case 130:
 case 132:
  return 1;
 }
}
