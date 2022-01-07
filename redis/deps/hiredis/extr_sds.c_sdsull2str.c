
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int sdsull2str(char *s, unsigned long long v) {
    char *p, aux;
    size_t l;



    p = s;
    do {
        *p++ = '0'+(v%10);
        v /= 10;
    } while(v);


    l = p-s;
    *p = '\0';


    p--;
    while(s < p) {
        aux = *s;
        *s = *p;
        *p = aux;
        s++;
        p--;
    }
    return l;
}
