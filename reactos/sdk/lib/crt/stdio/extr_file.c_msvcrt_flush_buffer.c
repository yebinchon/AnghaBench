
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _flag; int _ptr; int _base; scalar_t__ _cnt; int _file; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 int _IOERR ;
 int _IOMYBUF ;
 int _IOREAD ;
 int _IORW ;
 int _IOWRT ;
 int _USERBUF ;
 int _write (int ,int,int) ;

__attribute__((used)) static int msvcrt_flush_buffer(FILE* file)
{
    if((file->_flag & (_IOREAD|_IOWRT)) == _IOWRT &&
            file->_flag & (_IOMYBUF|_USERBUF)) {
        int cnt=file->_ptr-file->_base;
        if(cnt>0 && _write(file->_file, file->_base, cnt) != cnt) {
            file->_flag |= _IOERR;
            return EOF;
        }

        if(file->_flag & _IORW)
            file->_flag &= ~_IOWRT;





    }


    file->_ptr=file->_base;
    file->_cnt=0;

    return 0;
}
