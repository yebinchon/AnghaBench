
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t key_max; size_t key_len; unsigned char* key; unsigned char* key_static_string; } ;
typedef TYPE_1__ raxIterator ;


 int ENOMEM ;
 int errno ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 unsigned char* rax_realloc (unsigned char*,size_t) ;

int raxIteratorAddChars(raxIterator *it, unsigned char *s, size_t len) {
    if (it->key_max < it->key_len+len) {
        unsigned char *old = (it->key == it->key_static_string) ? ((void*)0) :
                                                                  it->key;
        size_t new_max = (it->key_len+len)*2;
        it->key = rax_realloc(old,new_max);
        if (it->key == ((void*)0)) {
            it->key = (!old) ? it->key_static_string : old;
            errno = ENOMEM;
            return 0;
        }
        if (old == ((void*)0)) memcpy(it->key,it->key_static_string,it->key_len);
        it->key_max = new_max;
    }


    memmove(it->key+it->key_len,s,len);
    it->key_len += len;
    return 1;
}
