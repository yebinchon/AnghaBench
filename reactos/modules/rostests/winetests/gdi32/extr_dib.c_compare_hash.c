
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int BYTE ;
typedef int BITMAPINFO ;


 int FALSE ;
 int compare_hash_broken_todo (int ,int const*,int *,char const*,int ,int ) ;

__attribute__((used)) static void compare_hash(HDC hdc, const BITMAPINFO *bmi, BYTE *bits, const char *info)
{
    compare_hash_broken_todo(hdc, bmi, bits, info, 0, FALSE);
}
