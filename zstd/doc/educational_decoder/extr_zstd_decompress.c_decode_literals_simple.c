
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int istream_t ;


 int BAD_ALLOC () ;
 int CORRUPTION () ;
 int IMPOSSIBLE () ;
 int * IO_get_read_ptr (int * const,int) ;
 size_t IO_read_bits (int * const,int) ;
 int IO_rewind_bits (int * const,int) ;
 size_t MAX_LITERALS_SIZE ;
 int * malloc (size_t) ;
 int memcpy (int *,int const* const,size_t) ;
 int memset (int *,int const,size_t) ;

__attribute__((used)) static size_t decode_literals_simple(istream_t *const in, u8 **const literals,
                                     const int block_type,
                                     const int size_format) {
    size_t size;
    switch (size_format) {


    case 0:
    case 2:

        IO_rewind_bits(in, 1);
        size = IO_read_bits(in, 5);
        break;
    case 1:

        size = IO_read_bits(in, 12);
        break;
    case 3:

        size = IO_read_bits(in, 20);
        break;
    default:

        IMPOSSIBLE();
    }

    if (size > MAX_LITERALS_SIZE) {
        CORRUPTION();
    }

    *literals = malloc(size);
    if (!*literals) {
        BAD_ALLOC();
    }

    switch (block_type) {
    case 0: {

        const u8 *const read_ptr = IO_get_read_ptr(in, size);
        memcpy(*literals, read_ptr, size);
        break;
    }
    case 1: {

        const u8 *const read_ptr = IO_get_read_ptr(in, 1);
        memset(*literals, read_ptr[0], size);
        break;
    }
    default:
        IMPOSSIBLE();
    }

    return size;
}
