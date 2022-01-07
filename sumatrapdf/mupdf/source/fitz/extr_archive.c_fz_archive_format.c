
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {char const* format; } ;
typedef TYPE_1__ fz_archive ;



const char *
fz_archive_format(fz_context *ctx, fz_archive *arch)
{
 return arch->format;
}
