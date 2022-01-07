
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UdevRuleOperatorType ;


 int OP_ADD ;
 int OP_ASSIGN ;
 int OP_ASSIGN_FINAL ;
 int OP_MATCH ;
 int OP_NOMATCH ;
 int OP_REMOVE ;
 int _OP_TYPE_INVALID ;
 int assert (char const*) ;
 scalar_t__ startswith (char const*,char*) ;

__attribute__((used)) static UdevRuleOperatorType parse_operator(const char *op) {
        assert(op);

        if (startswith(op, "=="))
                return OP_MATCH;
        if (startswith(op, "!="))
                return OP_NOMATCH;
        if (startswith(op, "+="))
                return OP_ADD;
        if (startswith(op, "-="))
                return OP_REMOVE;
        if (startswith(op, "="))
                return OP_ASSIGN;
        if (startswith(op, ":="))
                return OP_ASSIGN_FINAL;

        return _OP_TYPE_INVALID;
}
