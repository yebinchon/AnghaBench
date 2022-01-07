
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vfs ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int nBuf; int * aBuf; } ;
typedef TYPE_1__ VfslogVfs ;


 int put32bits (unsigned char*,int) ;
 int vfslog_flush (TYPE_1__*) ;

__attribute__((used)) static void vfslog_call(
  sqlite3_vfs *pVfs,
  int eEvent,
  int iFileid,
  sqlite3_int64 nClick,
  int return_code,
  int size,
  int offset
){
  VfslogVfs *p = (VfslogVfs *)pVfs;
  unsigned char *zRec;
  if( (24+p->nBuf)>sizeof(p->aBuf) ){
    vfslog_flush(p);
  }
  zRec = (unsigned char *)&p->aBuf[p->nBuf];
  put32bits(&zRec[0], eEvent);
  put32bits(&zRec[4], iFileid);
  put32bits(&zRec[8], (unsigned int)(nClick&0xffff));
  put32bits(&zRec[12], return_code);
  put32bits(&zRec[16], size);
  put32bits(&zRec[20], offset);
  p->nBuf += 24;
}
