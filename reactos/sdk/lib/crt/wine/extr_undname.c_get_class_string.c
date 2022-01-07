
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int num; int * elts; } ;
struct parsed_symbol {struct array stack; } ;


 int assert (int ) ;
 int memcpy (char*,int ,unsigned int) ;
 int strlen (int ) ;
 char* und_alloc (struct parsed_symbol*,unsigned int) ;

__attribute__((used)) static char* get_class_string(struct parsed_symbol* sym, int start)
{
    int i;
    unsigned int len, sz;
    char* ret;
    struct array *a = &sym->stack;

    for (len = 0, i = start; i < a->num; i++)
    {
        assert(a->elts[i]);
        len += 2 + strlen(a->elts[i]);
    }
    if (!(ret = und_alloc(sym, len - 1))) return ((void*)0);
    for (len = 0, i = a->num - 1; i >= start; i--)
    {
        sz = strlen(a->elts[i]);
        memcpy(ret + len, a->elts[i], sz);
        len += sz;
        if (i > start)
        {
            ret[len++] = ':';
            ret[len++] = ':';
        }
    }
    ret[len] = '\0';
    return ret;
}
