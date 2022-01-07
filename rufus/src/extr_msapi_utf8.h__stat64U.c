
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __stat64 {int dummy; } ;


 int _wstat64 (int ,struct __stat64*) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wpath ;

__attribute__((used)) static __inline int _stat64U(const char *path, struct __stat64 *buffer)
{
 int ret;
 wconvert(path);
 ret = _wstat64(wpath, buffer);
 wfree(path);
 return ret;
}
