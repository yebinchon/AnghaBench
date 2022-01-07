
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _O_RDONLY ;
 int _O_WRONLY ;
 int _SH_DENYNO ;
 int _SH_DENYRD ;
 int _SH_DENYWR ;
 int _wsopen_s (int*,int ,int,int,int) ;
 int wconvert (char const*) ;
 int wfilename ;
 int wfree (char const*) ;

__attribute__((used)) static __inline int _openU(const char *filename, int oflag , int pmode)
{
 int ret = -1;
 int shflag = _SH_DENYNO;
 wconvert(filename);

 if ((oflag & 0x03) == _O_RDONLY)
  shflag = _SH_DENYWR;
 else if ((oflag & 0x03) == _O_WRONLY)
  shflag = _SH_DENYRD;
 _wsopen_s(&ret, wfilename, oflag, shflag, pmode);
 wfree(filename);
 return ret;
}
