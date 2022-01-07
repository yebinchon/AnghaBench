
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opaque; int zerror_file; int zclose_file; int zseek64_file; int ztell64_file; int zwrite_file; int zread_file; int zopen64_file; } ;
typedef TYPE_1__ zlib_filefunc64_def ;


 int fclose_file_func ;
 int ferror_file_func ;
 int fopen64_file_func ;
 int fread_file_func ;
 int fseek64_file_func ;
 int ftell64_file_func ;
 int fwrite_file_func ;

void fill_fopen64_filefunc (zlib_filefunc64_def* pzlib_filefunc_def)
{
    pzlib_filefunc_def->zopen64_file = fopen64_file_func;
    pzlib_filefunc_def->zread_file = fread_file_func;
    pzlib_filefunc_def->zwrite_file = fwrite_file_func;
    pzlib_filefunc_def->ztell64_file = ftell64_file_func;
    pzlib_filefunc_def->zseek64_file = fseek64_file_func;
    pzlib_filefunc_def->zclose_file = fclose_file_func;
    pzlib_filefunc_def->zerror_file = ferror_file_func;
    pzlib_filefunc_def->opaque = ((void*)0);
}
