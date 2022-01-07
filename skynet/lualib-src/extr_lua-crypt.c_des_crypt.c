
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DES_FP (int ,int ) ;
 int DES_IP (int ,int ) ;
 int DES_ROUND (int ,int ) ;
 int GET_UINT32 (int ,int const*,int) ;
 int PUT_UINT32 (int ,int *,int) ;

__attribute__((used)) static void
des_crypt( const uint32_t SK[32], const uint8_t input[8], uint8_t output[8] ) {
 uint32_t X, Y, T;

 GET_UINT32( X, input, 0 );
 GET_UINT32( Y, input, 4 );

 DES_IP( X, Y );

 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );
 DES_ROUND( Y, X ); DES_ROUND( X, Y );

 DES_FP( Y, X );

 PUT_UINT32( Y, output, 0 );
 PUT_UINT32( X, output, 4 );
}
