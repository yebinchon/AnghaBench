
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_ASCII_DTOSTR_BUF_SIZE ;
 int fputs (char*,int ) ;
 int g_ascii_formatd (char*,int,char*,double) ;
 int stdout ;

__attribute__((used)) inline static void printf_double ( double d )
{
    char buf[G_ASCII_DTOSTR_BUF_SIZE];
    g_ascii_formatd ( buf, G_ASCII_DTOSTR_BUF_SIZE, "%.4lf", d );
    fputs ( buf, stdout );
}
