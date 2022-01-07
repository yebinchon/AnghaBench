
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_data {int flags; int (* r_lseek_handle ) (int ,int,int) ;int (* lseek ) (int ,int,int) ;int filept; int iohandle; } ;
typedef int off_t ;


 int READER_HANDLEIO ;
 int stub1 (int ,int,int) ;
 int stub2 (int ,int,int) ;

__attribute__((used)) static off_t io_seek(struct reader_data *rdat, off_t offset, int whence)
{
 if(rdat->flags & READER_HANDLEIO)
 {
  if(rdat->r_lseek_handle != ((void*)0))
  {
   return rdat->r_lseek_handle(rdat->iohandle, offset, whence);
  }
  else return -1;
 }
 else
 return rdat->lseek(rdat->filept, offset, whence);
}
