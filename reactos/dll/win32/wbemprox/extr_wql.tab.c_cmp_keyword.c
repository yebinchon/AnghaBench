
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyword {int len; int name; } ;


 int memicmpW (int ,int ,int) ;
 int min (int ,int ) ;

__attribute__((used)) static int cmp_keyword( const void *arg1, const void *arg2 )
{
    const struct keyword *key1 = arg1, *key2 = arg2;
    int len = min( key1->len, key2->len );
    int ret;

    if ((ret = memicmpW( key1->name, key2->name, len ))) return ret;
    if (key1->len < key2->len) return -1;
    else if (key1->len > key2->len) return 1;
    return 0;
}
