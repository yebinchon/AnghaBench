
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list {int next; } ;
struct keyitem_pair {int item; int key; int entry; int bucket; int hash; } ;
struct TYPE_4__ {int count; struct list pairs; int IDictionary_iface; } ;
typedef TYPE_1__ dictionary ;
typedef int VARIANT ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IDictionary_get_HashVal (int *,int *,int *) ;
 int S_OK ;
 int V_I4 (int *) ;
 int VariantClear (int *) ;
 int VariantCopyInd (int *,int *) ;
 int VariantInit (int *) ;
 struct list* get_bucket_head (TYPE_1__*,int ) ;
 struct keyitem_pair* heap_alloc (int) ;
 int heap_free (struct keyitem_pair*) ;
 int list_add_tail (struct list*,int *) ;
 int list_init (struct list*) ;

__attribute__((used)) static HRESULT add_keyitem_pair(dictionary *dict, VARIANT *key, VARIANT *item)
{
    struct keyitem_pair *pair;
    struct list *head;
    VARIANT hash;
    HRESULT hr;

    hr = IDictionary_get_HashVal(&dict->IDictionary_iface, key, &hash);
    if (FAILED(hr))
        return hr;

    pair = heap_alloc(sizeof(*pair));
    if (!pair)
        return E_OUTOFMEMORY;

    pair->hash = V_I4(&hash);
    VariantInit(&pair->key);
    VariantInit(&pair->item);

    hr = VariantCopyInd(&pair->key, key);
    if (FAILED(hr))
        goto failed;

    hr = VariantCopyInd(&pair->item, item);
    if (FAILED(hr))
        goto failed;

    head = get_bucket_head(dict, pair->hash);
    if (!head->next)

        list_init(head);


    list_add_tail(head, &pair->bucket);
    list_add_tail(&dict->pairs, &pair->entry);
    dict->count++;
    return S_OK;

failed:
    VariantClear(&pair->key);
    VariantClear(&pair->item);
    heap_free(pair);
    return hr;
}
