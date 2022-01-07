
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t const u32 ;
typedef int ostream_t ;
typedef int istream_t ;


 int CORRUPTION () ;
 int * IO_get_read_ptr (int *,size_t const) ;
 int * IO_get_write_ptr (int * const,size_t const) ;
 size_t const IO_istream_len (int *) ;
 int memcpy (int * const,int const* const,size_t const) ;

__attribute__((used)) static u32 copy_literals(const size_t literal_length, istream_t *litstream,
                         ostream_t *const out) {


    if (literal_length > IO_istream_len(litstream)) {
        CORRUPTION();
    }

    u8 *const write_ptr = IO_get_write_ptr(out, literal_length);
    const u8 *const read_ptr =
         IO_get_read_ptr(litstream, literal_length);

    memcpy(write_ptr, read_ptr, literal_length);

    return literal_length;
}
