
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int* get_token_data_line (int*,int*) ;
 int safe_free (int*) ;
 int* utf8_to_wchar (char const*) ;
 char* wchar_to_utf8 (int*) ;

char* get_token_data_buffer(const char* token, unsigned int n, const char* buffer, size_t buffer_size)
{
 unsigned int j, curly_count;
 wchar_t *wtoken = ((void*)0), *wdata = ((void*)0), *wbuffer = ((void*)0), *wline = ((void*)0);
 size_t i;
 BOOL done = FALSE;
 char* ret = ((void*)0);


 if ((token == ((void*)0)) || (buffer == ((void*)0)) || (buffer_size <= 4) || (buffer_size > 65536))
  goto out;


 if (buffer[buffer_size-1] != 0)
  goto out;

 wbuffer = utf8_to_wchar(buffer);
 wtoken = utf8_to_wchar(token);
 if ((wbuffer == ((void*)0)) || (wtoken == ((void*)0)))
  goto out;


 for (i=0,j=0,done=FALSE; (j!=n)&&(!done); ) {
  wline = &wbuffer[i];

  for(curly_count=0;((curly_count>0)||((wbuffer[i]!=L'\n')&&(wbuffer[i]!=L'\r')))&&(wbuffer[i]!=0);i++) {
   if (wbuffer[i] == L'{') curly_count++;
   if (wbuffer[i] == L'}') curly_count--;
  }
  if (wbuffer[i]==0) {
   done = TRUE;
  } else {
   wbuffer[i++] = 0;
  }
  wdata = get_token_data_line(wtoken, wline);
  if (wdata != ((void*)0)) {
   j++;
  }
 }
out:
 if (wdata != ((void*)0))
  ret = wchar_to_utf8(wdata);
 safe_free(wbuffer);
 safe_free(wtoken);
 return ret;
}
