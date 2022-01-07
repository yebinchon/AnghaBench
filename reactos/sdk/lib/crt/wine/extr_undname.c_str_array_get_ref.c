
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {unsigned int start; unsigned int max; char** elts; } ;


 int TRACE (char*,struct array*,unsigned int,int ) ;
 int WARN (char*,struct array*,unsigned int,unsigned int,unsigned int) ;
 int assert (struct array*) ;
 int debugstr_a (char*) ;

__attribute__((used)) static char* str_array_get_ref(struct array* cref, unsigned idx)
{
    assert(cref);
    if (cref->start + idx >= cref->max)
    {
        WARN("Out of bounds: %p %d + %d >= %d\n",
              cref, cref->start, idx, cref->max);
        return ((void*)0);
    }
    TRACE("Returning %p[%d] => %s\n",
          cref, idx, debugstr_a(cref->elts[cref->start + idx]));
    return cref->elts[cref->start + idx];
}
