
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum join_op { ____Placeholder_join_op } join_op ;
typedef int WCHAR ;
typedef int DWORD ;


 int ERR (char*,int) ;



 int * flatten_multi_string_values (int **,int ,int **,int ,int *) ;
 int remove_duplicate_values (int **,int ,int **,int ) ;

__attribute__((used)) static WCHAR *join_multi_string_values( enum join_op op, WCHAR **old, DWORD old_count,
                                        WCHAR **new, DWORD new_count, DWORD *size )
{
    switch (op)
    {
    case 130:
        old_count = remove_duplicate_values( old, old_count, new, new_count );
        return flatten_multi_string_values( old, old_count, new, new_count, size );

    case 129:
        old_count = remove_duplicate_values( old, old_count, new, new_count );
        return flatten_multi_string_values( new, new_count, old, old_count, size );

    case 128:
        return flatten_multi_string_values( new, new_count, ((void*)0), 0, size );

    default:
        ERR("unhandled join op %u\n", op);
        return ((void*)0);
    }
}
