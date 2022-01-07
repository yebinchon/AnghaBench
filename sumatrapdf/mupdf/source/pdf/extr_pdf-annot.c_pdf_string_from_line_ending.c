
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;
const char *pdf_string_from_line_ending(fz_context *ctx, enum pdf_line_ending end)
{
 switch (end)
 {
 default:
 case 133: return "None";
 case 128: return "Square";
 case 136: return "Circle";
 case 134: return "Diamond";
 case 132: return "OpenArrow";
 case 135: return "ClosedArrow";
 case 137: return "Butt";
 case 130: return "ROpenArrow";
 case 131: return "RClosedArrow";
 case 129: return "Slash";
 }
}
