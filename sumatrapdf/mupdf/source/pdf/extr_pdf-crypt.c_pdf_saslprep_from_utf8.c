
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_strlcpy (char*,char const*,int) ;

__attribute__((used)) static void pdf_saslprep_from_utf8(char *password, const char *utf8, int n)
{

 fz_strlcpy(password, utf8, n);
}
