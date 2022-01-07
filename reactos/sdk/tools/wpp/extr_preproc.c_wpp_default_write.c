
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char const*,int,unsigned int,int ) ;
 int ppy_out ;

__attribute__((used)) static void wpp_default_write( const char *buffer, unsigned int len ) {
    fwrite(buffer, 1, len, ppy_out);
}
