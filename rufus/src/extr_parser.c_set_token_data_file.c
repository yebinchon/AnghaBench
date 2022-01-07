
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int bom ;
typedef int FILE ;


 int ARRAYSIZE (char*) ;
 int SEEK_SET ;
 scalar_t__ _wcsnicmp (char*,char*,size_t) ;
 int * _wfopen (char*,char const*) ;
 int _wunlink (char*) ;
 scalar_t__ calloc (int,int) ;
 char* conversion_error ;
 int fclose (int *) ;
 int * fgetws (char*,int ,int *) ;
 int fputws (char*,int *) ;
 int fread (char*,size_t,int,int *) ;
 int fseek (int *,int ,int ) ;
 int fwprintf_s (int *,char*,char*,...) ;
 int fwrite (char*,size_t,int,int *) ;
 int safe_free (char*) ;
 int uprintf (char*,...) ;
 char* utf8_to_wchar (char const*) ;
 int wcscpy (char*,char*) ;
 size_t wcslen (char*) ;
 scalar_t__ wcsspn (char*,int ) ;
 int wspace ;

char* set_token_data_file(const char* token, const char* data, const char* filename)
{
 const wchar_t* outmode[] = { L"w", L"w, ccs=UTF-8", L"w, ccs=UTF-16LE" };
 wchar_t *wtoken = ((void*)0), *wfilename = ((void*)0), *wtmpname = ((void*)0), *wdata = ((void*)0), bom = 0;
 wchar_t buf[1024];
 FILE *fd_in = ((void*)0), *fd_out = ((void*)0);
 size_t i, size;
 int mode = 0;
 char *ret = ((void*)0), tmp[2];

 if ((filename == ((void*)0)) || (token == ((void*)0)) || (data == ((void*)0)))
  return ((void*)0);
 if ((filename[0] == 0) || (token[0] == 0) || (data[0] == 0))
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
 wdata = utf8_to_wchar(data);
 if (wdata == ((void*)0)) {
  uprintf(conversion_error, data);
  goto out;
 }

 fd_in = _wfopen(wfilename, L"r, ccs=UNICODE");
 if (fd_in == ((void*)0)) {
  uprintf("Could not open file '%s'\n", filename);
  goto out;
 }

 if (fread(&bom, sizeof(bom), 1, fd_in) == 1) {
  switch(bom) {
  case 0xFEFF:
   mode = 2;
   break;
  case 0xBBEF:
   mode = 1;
   break;
  default:
   mode = 0;
   break;
  }
  fseek(fd_in, 0, SEEK_SET);
 }

 wtmpname = (wchar_t*)calloc(wcslen(wfilename)+2, sizeof(wchar_t));
 if (wtmpname == ((void*)0)) {
  uprintf("Could not allocate space for temporary output name\n");
  goto out;
 }
 wcscpy(wtmpname, wfilename);
 wtmpname[wcslen(wtmpname)] = '~';

 fd_out = _wfopen(wtmpname, outmode[mode]);
 if (fd_out == ((void*)0)) {
  uprintf("Could not open temporary output file '%s~'\n", filename);
  goto out;
 }


 while (fgetws(buf, ARRAYSIZE(buf), fd_in) != ((void*)0)) {

  i = 0;


  i += wcsspn(&buf[i], wspace);


  if ((buf[i] == ';') || (buf[i] == '[')) {
   fputws(buf, fd_out);
   continue;
  }


  if (_wcsnicmp(&buf[i], wtoken, wcslen(wtoken)) != 0) {
   fputws(buf, fd_out);
   continue;
  }


  i += wcslen(wtoken);


  i += wcsspn(&buf[i], wspace);


  if (buf[i] != L'=') {
   fputws(buf, fd_out);
   continue;
  }
  i++;


  i += wcsspn(&buf[i], wspace);


  buf[i] = 0;
  fputws(buf, fd_out);



  fwprintf_s(fd_out, L"%s\n", wdata);
  ret = (char*)data;
 }

 if (ret == ((void*)0)) {


  fwprintf_s(fd_out, L"%s = %s\n", wtoken, wdata);
  ret = (char*)data;
 }

out:
 if (fd_in != ((void*)0)) fclose(fd_in);
 if (fd_out != ((void*)0)) fclose(fd_out);


 if (ret != ((void*)0)) {

  fd_in = _wfopen(wtmpname, L"rb");
  fd_out = _wfopen(wfilename, L"wb");

  if ((fd_in != ((void*)0)) && (fd_out != ((void*)0))) {
   size = (mode==2)?2:1;
   while(fread(tmp, size, 1, fd_in) == 1)
    fwrite(tmp, size, 1, fd_out);
   fclose(fd_in);
   fclose(fd_out);
  } else {
   uprintf("Could not write '%s' - original file has been left unmodified\n", filename);
   ret = ((void*)0);
   if (fd_in != ((void*)0)) fclose(fd_in);
   if (fd_out != ((void*)0)) fclose(fd_out);
  }
 }
 if (wtmpname != ((void*)0))
  _wunlink(wtmpname);
 safe_free(wfilename);
 safe_free(wtmpname);
 safe_free(wtoken);
 safe_free(wdata);

 return ret;
}
