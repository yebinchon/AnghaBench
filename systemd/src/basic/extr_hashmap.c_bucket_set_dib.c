
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashmapBase ;


 unsigned int DIB_FREE ;
 int DIB_RAW_FREE ;
 int DIB_RAW_OVERFLOW ;
 int MIN (unsigned int,int ) ;
 int * dib_raw_ptr (int *) ;

__attribute__((used)) static void bucket_set_dib(HashmapBase *h, unsigned idx, unsigned dib) {
        dib_raw_ptr(h)[idx] = dib != DIB_FREE ? MIN(dib, DIB_RAW_OVERFLOW) : DIB_RAW_FREE;
}
