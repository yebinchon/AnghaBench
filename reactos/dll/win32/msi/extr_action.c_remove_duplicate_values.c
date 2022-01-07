
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef unsigned int DWORD ;


 int msi_free (int *) ;
 int strcmpW (int *,int *) ;

__attribute__((used)) static DWORD remove_duplicate_values( WCHAR **old, DWORD old_count,
                                      WCHAR **new, DWORD new_count )
{
    DWORD ret = old_count;
    unsigned int i, j, k;

    for (i = 0; i < new_count; i++)
    {
        for (j = 0; j < old_count; j++)
        {
            if (old[j] && !strcmpW( new[i], old[j] ))
            {
                msi_free( old[j] );
                for (k = j; k < old_count - 1; k++) { old[k] = old[k + 1]; }
                old[k] = ((void*)0);
                ret--;
            }
        }
    }
    return ret;
}
