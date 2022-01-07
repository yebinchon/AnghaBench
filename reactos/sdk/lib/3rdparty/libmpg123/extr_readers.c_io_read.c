
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_data {int flags; int (* r_read_handle ) (int ,void*,size_t) ;int (* read ) (int ,void*,size_t) ;int filept; int iohandle; } ;
typedef int ssize_t ;


 int READER_HANDLEIO ;
 int stub1 (int ,void*,size_t) ;
 int stub2 (int ,void*,size_t) ;

__attribute__((used)) static ssize_t io_read(struct reader_data *rdat, void *buf, size_t count)
{
 if(rdat->flags & READER_HANDLEIO)
 {
  if(rdat->r_read_handle != ((void*)0))
  {
   return rdat->r_read_handle(rdat->iohandle, buf, count);
  }
  else return -1;
 }
 else
 return rdat->read(rdat->filept, buf, count);
}
