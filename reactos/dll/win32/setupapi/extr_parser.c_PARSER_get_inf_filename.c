
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int const* filename; } ;
typedef int WCHAR ;
typedef struct inf_file* HINF ;



const WCHAR *PARSER_get_inf_filename( HINF hinf )
{
    struct inf_file *file = hinf;
    return file->filename;
}
