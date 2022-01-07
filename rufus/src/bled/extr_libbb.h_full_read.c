
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int EFAULT ;
 int EINTR ;
 int _read (int,void*,int) ;
 int bb_total_rb ;
 int * bb_virtual_buf ;
 int bb_virtual_fd ;
 size_t bb_virtual_len ;
 size_t bb_virtual_pos ;
 scalar_t__* bled_cancel_request ;
 int bled_progress (int) ;
 int errno ;
 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static inline int full_read(int fd, void *buf, size_t count) {
 int rb;

 if (fd < 0) {
  errno = EBADF;
  return -1;
 }
 if (buf == ((void*)0)) {
  errno = EFAULT;
  return -1;
 }
 if ((bled_cancel_request != ((void*)0)) && (*bled_cancel_request != 0)) {
  errno = EINTR;
  return -1;
 }

 if (fd == bb_virtual_fd) {
  if (bb_virtual_pos + count > bb_virtual_len)
   count = bb_virtual_len - bb_virtual_pos;
  memcpy(buf, &bb_virtual_buf[bb_virtual_pos], count);
  bb_virtual_pos += count;
  rb = (int)count;
 } else {
  rb = _read(fd, buf, (int)count);
 }
 if (rb > 0) {
  bb_total_rb += rb;
  if (bled_progress != ((void*)0))
   bled_progress(bb_total_rb);
 }
 return rb;
}
