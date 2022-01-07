
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int maxlen; unsigned char* data; } ;
typedef TYPE_1__ Packet ;



__attribute__((used)) static int write_chars(Packet *p, const unsigned char *str, int nb_chars)
{
    if (p->pos>p->maxlen-nb_chars)
        return 0;
    for (int i=0;i<nb_chars;i++)
        p->data[p->pos++] = str[i];
    return 1;
}
