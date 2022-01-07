
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_DEFBUTTON2 ;
 int MB_DEFMASK ;
 int MB_TYPEMASK ;

__attribute__((used)) static int
MBdefault (int uType)
{
    static const int matrix[][4] = {{130, 0, 0, 0},
                                    {130, 133, 0, 0},
                                    {134, 129, 132, 0},
                                    {128, 131, 133, 0},
                                    {128, 131, 0, 0},
                                    {129, 133, 0, 0}};
    int type = uType & MB_TYPEMASK;
    int def = (uType & MB_DEFMASK) / MB_DEFBUTTON2;

    return matrix[type][def];
}
