
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLOAT ;
typedef int DWORD ;



__attribute__((used)) static DWORD get_num_hash(FLOAT num)
{
    return (*((DWORD*)&num)) % 1201;
}
