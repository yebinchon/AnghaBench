
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;







 unsigned short get_tfs_offset (int) ;

__attribute__((used)) static unsigned short write_oleaut_tfs(VARTYPE vt)
{
    switch (vt)
    {
    case 132: return get_tfs_offset( 0 );
    case 129: return get_tfs_offset( 1 );
    case 131: return get_tfs_offset( 2 );
    case 128: return get_tfs_offset( 3 );
    case 130: return get_tfs_offset( 4 );
    }
    return 0;
}
