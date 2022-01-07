
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary_entry {void* value; } ;
struct dictionary {int dummy; } ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int ,void*,...) ;
 int TRUE ;
 struct dictionary_entry** dictionary_find_internal (struct dictionary*,void const*) ;

BOOL dictionary_find(struct dictionary *d, const void *k, void **value)
{
    struct dictionary_entry **prior;
    BOOL ret = FALSE;

    TRACE("(%p, %p, %p)\n", d, k, value);
    if (!d)
        return FALSE;
    if (!value)
        return FALSE;
    if ((prior = dictionary_find_internal(d, k)))
    {
        *value = (*prior)->value;
        ret = TRUE;
    }
    TRACE("returning %d (%p)\n", ret, *value);
    return ret;
}
