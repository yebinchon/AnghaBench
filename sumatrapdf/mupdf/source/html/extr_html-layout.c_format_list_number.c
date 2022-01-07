
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
 int format_alpha_number (int *,char*,int,int,int,int) ;
 int format_roman_number (int *,char*,int,int,int ,char*) ;
 int fz_snprintf (char*,int,char*,int) ;
 int fz_strlcpy (char*,char*,int) ;
 int roman_lc ;
 int roman_uc ;

__attribute__((used)) static void format_list_number(fz_context *ctx, int type, int x, char *buf, int size)
{
 switch (type)
 {
 case 133: fz_strlcpy(buf, "", size); break;
 case 138: fz_snprintf(buf, size, "%C  ", 0x2022); break;
 case 141: fz_snprintf(buf, size, "%C  ", 0x25CB); break;
 case 132: fz_snprintf(buf, size, "%C  ", 0x25A0); break;
 default:
 case 140: fz_snprintf(buf, size, "%d. ", x); break;
 case 139: fz_snprintf(buf, size, "%02d. ", x); break;
 case 134: format_roman_number(ctx, buf, size, x, roman_lc, "m"); break;
 case 128: format_roman_number(ctx, buf, size, x, roman_uc, "M"); break;
 case 137: format_alpha_number(ctx, buf, size, x, 'a', 'z'); break;
 case 131: format_alpha_number(ctx, buf, size, x, 'A', 'Z'); break;
 case 135: format_alpha_number(ctx, buf, size, x, 'a', 'z'); break;
 case 129: format_alpha_number(ctx, buf, size, x, 'A', 'Z'); break;
 case 136: format_alpha_number(ctx, buf, size, x, 0x03B1, 0x03C9); break;
 case 130: format_alpha_number(ctx, buf, size, x, 0x0391, 0x03A9); break;
 }
}
