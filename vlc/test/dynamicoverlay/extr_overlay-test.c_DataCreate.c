
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HEIGHT ;
 int TEXT ;
 int TEXTSIZE ;
 int memcpy (int ,int ,int ) ;
 char* p_imageRGBA ;
 int p_text ;

void DataCreate( void ) {
    char *p_data = p_imageRGBA;
    for( size_t i = 0; i < HEIGHT; ++i ) {
        for( size_t j = 0; j < HEIGHT; ++j ) {
            *(p_data++) = i * 4 & 0xFF;
            *(p_data++) = 0xFF;
            *(p_data++) = 0x00;
            *(p_data++) = j * 4 & 0xFF;
        }
    }

    memcpy( p_text, TEXT, TEXTSIZE );
}
