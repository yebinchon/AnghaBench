
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyitem_pair {scalar_t__ hash; int const key; } ;
typedef int dictionary ;
typedef int VARIANT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ is_string_key (int const*) ;
 scalar_t__ strcmp_key (int const*,int const*,int const*) ;

__attribute__((used)) static BOOL is_matching_key(const dictionary *dict, const struct keyitem_pair *pair, const VARIANT *key, DWORD hash)
{
    if (is_string_key(key) && is_string_key(&pair->key)) {
        if (hash != pair->hash)
            return FALSE;

        return strcmp_key(dict, key, &pair->key) == 0;
    }

    if ((is_string_key(key) && !is_string_key(&pair->key)) ||
        (!is_string_key(key) && is_string_key(&pair->key)))
        return FALSE;


    return hash == pair->hash;
}
