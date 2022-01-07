
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _wcsnicmp (int*,int const*,scalar_t__) ;
 scalar_t__ wcslen (int const*) ;
 scalar_t__ wcsspn (int*,int ) ;
 int wspace ;

__attribute__((used)) static wchar_t* get_token_data_line(const wchar_t* wtoken, wchar_t* wline)
{
 size_t i, r;
 BOOLEAN quoteth = FALSE;
 BOOLEAN xml = FALSE;

 if ((wtoken == ((void*)0)) || (wline == ((void*)0)) || (wline[0] == 0))
  return ((void*)0);

 i = 0;


 i += wcsspn(&wline[i], wspace);
 if (wline[i] == L'<')
  i++;
 i += wcsspn(&wline[i], wspace);


 if (_wcsnicmp(&wline[i], wtoken, wcslen(wtoken)) != 0)
  return ((void*)0);


 i += wcslen(wtoken);


 i += wcsspn(&wline[i], wspace);


 if (wline[i] == L'>')
  xml = TRUE;
 else if (wline[i] != L'=')
  return ((void*)0);
 i++;


 i += wcsspn(&wline[i], wspace);


 if (wline[i] == L'"') {
  quoteth = TRUE;
  i++;
 }


 r = i;


 while ( (wline[i] != 0) && (((wline[i] != L'"') && (wline[i] != L'<')) || ((wline[i] == L'"') && (!quoteth)) || ((wline[i] == L'<') && (!xml))) )
  i++;
 wline[i--] = 0;


 while ((i>=r) && ((wline[i] == L'\r') || (wline[i] == L'\n')))
  wline[i--] = 0;

 return (wline[r] == 0)?((void*)0):&wline[r];
}
