
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _wchdir (int ) ;
 int wconvert (char const*) ;
 int wdirname ;
 int wfree (char const*) ;

__attribute__((used)) static __inline int _chdirU(const char *dirname)
{
 int ret;
 wconvert(dirname);
 ret = _wchdir(wdirname);
 wfree(dirname);
 return ret;
}
