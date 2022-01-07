
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



__attribute__((used)) static UINT width_bytes(UINT width, UINT bpp)
{
    return (width * bpp + 7) / 8;
}
