
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits_buffer_t ;


 int bits_write (int *,int,char const) ;

__attribute__((used)) static void Mpeg4SUBTDecoderSpecific_55( bits_buffer_t *b )
{
    bits_write( b, 8, 0x10 );
    bits_write( b, 8, 0x00 );



    bits_write( b, 8, 52 );

    bits_write( b, 32, 0x00 );

    bits_write( b, 8, 0x00 );
    bits_write( b, 8, 0x01 );

    bits_write( b, 24, 0x00 );
    bits_write( b, 8, 0xff );

    bits_write( b, 16, 0x00 );
    bits_write( b, 16, 0x00 );
    bits_write( b, 16, 0x00 );
    bits_write( b, 16, 0x00 );

    bits_write( b, 16, 0x00 );
    bits_write( b, 16, 0x00 );
    bits_write( b, 16, 0x00 );


    bits_write( b, 8, 0x00 );
    bits_write( b, 8, 12 );

    bits_write( b, 24, 0x00 );
    bits_write( b, 8, 0x00 );

    bits_write( b, 24, 0x00 );
    bits_write( b, 8, 22 );

    bits_write( b, 8, 'f' );
    bits_write( b, 8, 't' );
    bits_write( b, 8, 'a' );
    bits_write( b, 8, 'b' );

    bits_write( b, 8, 0x00 );
    bits_write( b, 8, 0x01 );

    bits_write( b, 16, 0x00 );
    bits_write( b, 8, 9 );
    const char fontname[] = "Helvetica";
    for(int i=0; i<9; i++)
        bits_write( b, 8, fontname[i] );
}
