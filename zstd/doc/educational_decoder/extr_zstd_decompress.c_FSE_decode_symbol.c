
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
typedef int i64 ;
typedef int FSE_dtable ;


 int const FSE_peek_symbol (int const* const,int ) ;
 int FSE_update_state (int const* const,int * const,int const* const,int * const) ;

__attribute__((used)) static inline u8 FSE_decode_symbol(const FSE_dtable *const dtable,
                                   u16 *const state, const u8 *const src,
                                   i64 *const offset) {
    const u8 symb = FSE_peek_symbol(dtable, *state);
    FSE_update_state(dtable, state, src, offset);
    return symb;
}
