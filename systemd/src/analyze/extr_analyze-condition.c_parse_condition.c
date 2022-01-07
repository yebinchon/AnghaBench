
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; int (* parser ) (int *,char*,int ,int *,int ,char*,int ,char const*,int **,TYPE_2__*) ;int type; } ;
typedef TYPE_1__ condition_definition ;
struct TYPE_8__ {int * asserts; int * conditions; } ;
typedef TYPE_2__ Unit ;
typedef int Condition ;


 int EINVAL ;
 size_t ELEMENTSOF (TYPE_1__*) ;
 int SYNTHETIC_ERRNO (int ) ;
 int WHITESPACE ;
 TYPE_1__* condition_definitions ;
 int log_error_errno (int ,char*,char const*) ;
 char* startswith (char const*,char*) ;
 scalar_t__ strspn (char const*,int ) ;
 int stub1 (int *,char*,int ,int *,int ,char*,int ,char const*,int **,TYPE_2__*) ;

__attribute__((used)) static int parse_condition(Unit *u, const char *line) {
        const char *p;
        Condition **target;

        if ((p = startswith(line, "Condition")))
                target = &u->conditions;
        else if ((p = startswith(line, "Assert")))
                target = &u->asserts;
        else
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Cannot parse \"%s\".", line);

        for (size_t i = 0; i < ELEMENTSOF(condition_definitions); i++) {
                const condition_definition *c = &condition_definitions[i];

                p = startswith(line, c->name);
                if (!p)
                        continue;
                p += strspn(p, WHITESPACE);
                if (*p != '=')
                        return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Expected \"=\" in \"%s\".", line);

                p += 1 + strspn(p + 1, WHITESPACE);

                return c->parser(((void*)0), "(stdin)", 0, ((void*)0), 0, c->name, c->type, p, target, u);
        }

        return log_error_errno(SYNTHETIC_ERRNO(EINVAL), "Cannot parse \"%s\".", line);
}
