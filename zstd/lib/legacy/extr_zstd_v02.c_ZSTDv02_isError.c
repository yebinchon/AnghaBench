
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZSTD_isError (size_t) ;

unsigned ZSTDv02_isError(size_t code)
{
    return ZSTD_isError(code);
}
