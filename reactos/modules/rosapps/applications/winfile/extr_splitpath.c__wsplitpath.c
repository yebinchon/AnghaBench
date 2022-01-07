
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int lstrlenW (char const*) ;

void _wsplitpath(const WCHAR* path, WCHAR* drv, WCHAR* dir, WCHAR* name, WCHAR* ext)
{
        const WCHAR* end;
 const WCHAR* p;
 const WCHAR* s;


 if (path[0] && path[1]==':') {
  if (drv) {
   *drv++ = *path++;
   *drv++ = *path++;
   *drv = '\0';
  }
 } else if (drv)
  *drv = '\0';


    end = path + lstrlenW(path);


 for(p=end; p>path && *--p!='\\' && *p!='/'; )
  if (*p == '.') {
   end = p;
   break;
  }

 if (ext)
  for(s=end; (*ext=*s++); )
   ext++;


 for(p=end; p>path; )
  if (*--p=='\\' || *p=='/') {
   p++;
   break;
  }

 if (name) {
  for(s=p; s<end; )
   *name++ = *s++;

  *name = '\0';
 }

 if (dir) {
  for(s=path; s<p; )
   *dir++ = *s++;

  *dir = '\0';
 }
}
