
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef enum pdf_annot_type { ____Placeholder_pdf_annot_type } pdf_annot_type ;
const char *
pdf_string_from_annot_type(fz_context *ctx, enum pdf_annot_type type)
{
 switch (type)
 {
 case 132: return "Text";
 case 145: return "Link";
 case 149: return "FreeText";
 case 146: return "Line";
 case 136: return "Square";
 case 151: return "Circle";
 case 143: return "Polygon";
 case 142: return "PolyLine";
 case 148: return "Highlight";
 case 130: return "Underline";
 case 135: return "Squiggly";
 case 133: return "StrikeOut";
 case 139: return "Redact";
 case 134: return "Stamp";
 case 152: return "Caret";
 case 147: return "Ink";
 case 141: return "Popup";
 case 150: return "FileAttachment";
 case 137: return "Sound";
 case 144: return "Movie";
 case 128: return "Widget";
 case 138: return "Screen";
 case 140: return "PrinterMark";
 case 131: return "TrapNet";
 case 129: return "Watermark";
 case 153: return "3D";
 default: return "UNKNOWN";
 }
}
