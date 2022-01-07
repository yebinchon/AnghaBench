
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct results_s {size_t offset; } ;
typedef size_t ssize_t ;


 int printf (char*,size_t,int) ;

__attribute__((used)) static int check_set( const uint8_t *p_set, const uint8_t *p_end,
                      const struct results_s *p_results, size_t i_results,
                      ssize_t i_results_offset,
                      const uint8_t *(*pf_find)(const uint8_t *, const uint8_t *))
{
    const uint8_t *p = p_set;
    size_t i_entry = 0;
    while( p != ((void*)0) )
    {
        p = pf_find( p, p_end );
        if( p == ((void*)0) )
            break;
        printf("- entry %zu offset %ld\n", i_entry, p - p_set);
        if( i_entry == i_results )
            break;
        if( p_results[i_entry].offset + i_results_offset != (size_t) (p - p_set) )
            return 1;
        i_entry++;
        p++;
    }

    if( p != ((void*)0) || i_entry != i_results )
        return 1;

    return 0;
}
