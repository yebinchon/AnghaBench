
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int restrict_namespaces; } ;
typedef TYPE_1__ ExecContext ;


 int NAMESPACE_FLAGS_ALL ;
 int assert (TYPE_1__ const*) ;

__attribute__((used)) static inline bool exec_context_restrict_namespaces_set(const ExecContext *c) {
        assert(c);

        return (c->restrict_namespaces & NAMESPACE_FLAGS_ALL) != NAMESPACE_FLAGS_ALL;
}
