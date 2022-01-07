
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
struct TYPE_3__ {int nBuf; int * aBuf; } ;
typedef TYPE_1__ VfslogVfs ;


 int memcpy (unsigned char*,char const*,int) ;
 int put32bits (unsigned char*,int) ;
 scalar_t__ strlen (char const*) ;
 int vfslog_flush (TYPE_1__*) ;

__attribute__((used)) static void vfslog_string(sqlite3_vfs *pVfs, const char *zStr){
  VfslogVfs *p = (VfslogVfs *)pVfs;
  unsigned char *zRec;
  int nStr = zStr ? (int)strlen(zStr) : 0;
  if( (4+nStr+p->nBuf)>sizeof(p->aBuf) ){
    vfslog_flush(p);
  }
  zRec = (unsigned char *)&p->aBuf[p->nBuf];
  put32bits(&zRec[0], nStr);
  if( zStr ){
    memcpy(&zRec[4], zStr, nStr);
  }
  p->nBuf += (4 + nStr);
}
