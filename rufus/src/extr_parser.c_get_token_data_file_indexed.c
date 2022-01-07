
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int ARRAYSIZE (int *) ;
 int * _wfopen (int *,char*) ;
 int conversion_error ;
 int fclose (int *) ;
 int * fgetws (int *,int ,int *) ;
 int * get_token_data_line (int *,int *) ;
 int safe_free (int *) ;
 int uprintf (int ,char const*) ;
 int * utf8_to_wchar (char const*) ;
 char* wchar_to_utf8 (int *) ;

char* get_token_data_file_indexed(const char* token, const char* filename, int index)
{
 int i = 0;
 wchar_t *wtoken = ((void*)0), *wdata= ((void*)0), *wfilename = ((void*)0);
 wchar_t buf[1024];
 FILE* fd = ((void*)0);
 char *ret = ((void*)0);

 if ((filename == ((void*)0)) || (token == ((void*)0)))
  return ((void*)0);
 if ((filename[0] == 0) || (token[0] == 0))
  return ((void*)0);

 wfilename = utf8_to_wchar(filename);
 if (wfilename == ((void*)0)) {
  uprintf(conversion_error, filename);
  goto out;
 }
 wtoken = utf8_to_wchar(token);
 if (wfilename == ((void*)0)) {
  uprintf(conversion_error, token);
  goto out;
 }
 fd = _wfopen(wfilename, L"r, ccs=UNICODE");
 if (fd == ((void*)0)) goto out;



 while (fgetws(buf, ARRAYSIZE(buf), fd) != ((void*)0)) {
  wdata = get_token_data_line(wtoken, buf);
  if ((wdata != ((void*)0)) && (++i == index)) {
   ret = wchar_to_utf8(wdata);
   break;
  }
 }

out:
 if (fd != ((void*)0))
  fclose(fd);
 safe_free(wfilename);
 safe_free(wtoken);
 return ret;
}
