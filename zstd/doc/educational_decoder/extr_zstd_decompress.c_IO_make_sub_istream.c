
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int istream_t ;


 int * IO_get_read_ptr (int * const,size_t) ;
 int IO_make_istream (int const* const,size_t) ;

__attribute__((used)) static inline istream_t IO_make_sub_istream(istream_t *const in, size_t len) {

    const u8 *const ptr = IO_get_read_ptr(in, len);


    return IO_make_istream(ptr, len);
}
