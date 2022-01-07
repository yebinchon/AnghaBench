
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int * string_pos; } ;
typedef int WCHAR ;


 int strcpyW (int *,int const*) ;
 scalar_t__ strlenW (int *) ;

__attribute__((used)) static WCHAR *push_string( struct inf_file *file, const WCHAR *string )
{
    WCHAR *ret = file->string_pos;
    strcpyW( ret, string );
    file->string_pos += strlenW( ret ) + 1;
    return ret;
}
