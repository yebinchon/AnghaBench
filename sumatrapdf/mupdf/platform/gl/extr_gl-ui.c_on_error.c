
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int MB_ICONERROR ;
 int MessageBoxA (int *,char*,char*,int ) ;
 int fprintf (int ,char*) ;
 int fz_vsnprintf (char*,int,char const*,int ) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void on_error(const char *fmt, va_list ap)
{





 fprintf(stderr, "GLUT error: ");
 vfprintf(stderr, fmt, ap);
 fprintf(stderr, "\n");

}
