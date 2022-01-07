
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int GET_CUSTOM_PIX () ;

__attribute__((used)) static inline void
get_custom_pix_8b( uint8_t *y_in[2], uint8_t *y_out[2],
                   uint8_t **u_in, uint8_t **u_out,
                   uint8_t **v_in, uint8_t **v_out,
                   uint16_t const u, uint16_t const v,
                   int const *m, int maxval )
{
    uint8_t val;
    GET_CUSTOM_PIX();
}
