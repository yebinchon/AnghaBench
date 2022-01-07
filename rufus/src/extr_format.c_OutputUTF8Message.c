
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_OEMCP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ calloc (int,int) ;
 int safe_free (int *) ;
 scalar_t__ safe_strlen (char const*) ;
 int uprintf (char*,int *) ;

__attribute__((used)) static void OutputUTF8Message(const char* src)
{
 int len;
 wchar_t* wdst = ((void*)0);

 if (src == ((void*)0))
  goto out;
 len = (int)safe_strlen(src);
 while ((len > 0) && ((src[len-1] == 0x0A) || (src[len-1] == 0x0D) || (src[len-1] == ' ')))
  len--;
 if (len == 0)
  goto out;

 len = MultiByteToWideChar(CP_OEMCP, 0, src, len, ((void*)0), 0);
 if (len == 0)
  goto out;
 wdst = (wchar_t*)calloc(len+1, sizeof(wchar_t));
 if ((wdst == ((void*)0)) || (MultiByteToWideChar(CP_OEMCP, 0, src, len, wdst, len+1) == 0))
  goto out;
 uprintf("%S", wdst);

out:
 safe_free(wdst);
}
