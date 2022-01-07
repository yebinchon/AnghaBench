
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConditionType ;
typedef int Condition ;


 int LIST_PREPEND (int ,int *,int *) ;
 int assert (void*) ;
 int * condition_free_list_type (int *,int) ;
 int * condition_new (int,char const*,int,int) ;
 int conditions ;
 scalar_t__ isempty (char const*) ;
 int log_oom () ;

int config_parse_net_condition(const char *unit,
                               const char *filename,
                               unsigned line,
                               const char *section,
                               unsigned section_line,
                               const char *lvalue,
                               int ltype,
                               const char *rvalue,
                               void *data,
                               void *userdata) {

        ConditionType cond = ltype;
        Condition **list = data, *c;
        bool negate;

        assert(filename);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        if (isempty(rvalue)) {
                *list = condition_free_list_type(*list, cond);
                return 0;
        }

        negate = rvalue[0] == '!';
        if (negate)
                rvalue++;

        c = condition_new(cond, rvalue, 0, negate);
        if (!c)
                return log_oom();


        *list = condition_free_list_type(*list, cond);

        LIST_PREPEND(conditions, *list, c);
        return 0;
}
