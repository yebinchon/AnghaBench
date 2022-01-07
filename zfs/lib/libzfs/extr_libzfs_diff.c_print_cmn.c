
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dsmnt; } ;
typedef TYPE_1__ differ_info_t ;
typedef int FILE ;


 int stream_bytes (int *,char const*) ;

__attribute__((used)) static void
print_cmn(FILE *fp, differ_info_t *di, const char *file)
{
 stream_bytes(fp, di->dsmnt);
 stream_bytes(fp, file);
}
