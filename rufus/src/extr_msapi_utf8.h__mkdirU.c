
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _wmkdir (int ) ;
 int wconvert (char const*) ;
 int wdirname ;
 int wfree (char const*) ;

__attribute__((used)) static __inline int _mkdirU(const char* dirname)
{
 wconvert(dirname);
 int ret;
 ret = _wmkdir(wdirname);
 wfree(dirname);
 return ret;
}
